# Discord 進度通知 Routine

> 理念：在「討論完一個階段 Topic 並執行完任務」後，自動把**本次主要內容 + git commit 重點**送到 Discord，
> 讓每個階段都留下可追溯的紀錄。流程優先、標準化，再談教材與介面。

## 運作方式

每次 push 到 `dev` 分支，GitHub Actions（`.github/workflows/discord-notify.yml`）會自動：
1. 取出最近的 commit 訊息作為「本次主要內容」。
2. 由 `scripts/notify_discord.sh` 組成 Discord embed（含 commit 更新重點）。
3. 送到 Webhook。

## 一次性設定（你需要做的）

Webhook URL 屬機密，**不存在 repo 裡**，改存為 GitHub Secret：

1. 進入 GitHub repo → **Settings** → **Secrets and variables** → **Actions**
2. 點 **New repository secret**
3. Name 填：`DISCORD_WEBHOOK_URL`
4. Value 填：你的 Discord Webhook 網址
5. 儲存即可

設定後，下一次 push 到 `dev` 就會自動發送；也可在 Actions 頁面用 **Run workflow** 手動觸發。

## 手動 / 本機發送（備用）

```bash
DISCORD_WEBHOOK_URL="https://discord.com/api/webhooks/..." \
  ./scripts/notify_discord.sh "階段標題" "本次主要內容（可多行）"
```

## 安全備註

- Webhook URL 形同密碼，任何人拿到都能往你的頻道發訊息。若曾在不安全處外洩，建議到 Discord 頻道設定**重新產生（Regenerate）**一組，再更新 GitHub Secret。
- `.gitignore` 已封鎖 `.env`、`*.secret` 等，避免誤上傳機密。
