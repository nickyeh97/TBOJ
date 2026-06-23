#!/usr/bin/env bash
#
# notify_discord.sh — 在完成一個階段任務後，把本次重點 + git commit 摘要送到 Discord。
#
# 用法：
#   DISCORD_WEBHOOK_URL="https://discord.com/api/webhooks/..." \
#     ./scripts/notify_discord.sh "本次階段標題" "本次主要內容（可多行）"
#
# 設計理念：類似 routine，在「討論完階段 Topic 並執行完任務」後手動觸發，
# 訊息內容 = 本次主要內容 + 最新 git commit 重點。
#
# 安全：Webhook URL 屬於機密，請以環境變數提供，切勿寫入 repo。
#   - 本機：export DISCORD_WEBHOOK_URL=...
#   - CI：存為 GitHub Secret 名為 DISCORD_WEBHOOK_URL

set -euo pipefail

WEBHOOK="${DISCORD_WEBHOOK_URL:-}"
if [[ -z "$WEBHOOK" ]]; then
  echo "錯誤：未設定 DISCORD_WEBHOOK_URL 環境變數。" >&2
  exit 1
fi

TITLE="${1:-TBOJ 進度更新}"
SUMMARY="${2:-（未提供本次內容摘要）}"

# 取最近 5 筆 commit 作為更新重點
COMMITS="$(git log -5 --pretty=format:'• %s' 2>/dev/null || echo '（無 git 紀錄）')"

# 組裝 Discord 訊息（content 上限 2000 字，這裡保守處理）
read -r -d '' PAYLOAD <<EOF || true
{
  "embeds": [{
    "title": $(printf '%s' "$TITLE" | python3 -c 'import json,sys; print(json.dumps(sys.stdin.read()))'),
    "color": 3447003,
    "fields": [
      {
        "name": "本次主要內容",
        "value": $(printf '%s' "$SUMMARY" | python3 -c 'import json,sys; print(json.dumps(sys.stdin.read()[:1000]))')
      },
      {
        "name": "Git commit 更新重點",
        "value": $(printf '%s' "$COMMITS" | python3 -c 'import json,sys; print(json.dumps(sys.stdin.read()[:1000]))')
      }
    ]
  }]
}
EOF

curl -sf -H "Content-Type: application/json" -X POST -d "$PAYLOAD" "$WEBHOOK" \
  && echo "✅ 已發送 Discord 通知。" \
  || { echo "❌ Discord 通知發送失敗。" >&2; exit 1; }
