# 教材庫（Content）

本目錄收錄 TBOJ 的學習教材。**所有教材在納入前，都必須通過 [`../docs/DESIGN_PRINCIPLES.md`](../docs/DESIGN_PRINCIPLES.md) 的審稿檢查清單**（尤其是腓立比書 4:8 的內容標準）。

> 🛠️ **要新增主題？** 請用教材編寫 skill：[`.claude/skills/tboj-curriculum/SKILL.md`](../.claude/skills/tboj-curriculum/SKILL.md)。
> 它把兩軌哲學、四檔結構、模板與提交規範都標準化了，任何 Agent（含 subagent）都能照著產出。

## 兩套版本的設計哲學

每個主題會發展出**兩種版本**，服務兩種不同的教育者：

| | 第一版（傳統取向） | 第二版（AI 時代取向） |
| --- | --- | --- |
| **讀者** | 傳統教師、家長、圖書館館員 | 教會教育者、新式家長、理解 AI 時代的教育者 |
| **核心** | 學科知識 + 孩子能力發展 | 個人發想、提問、解決問題 |
| **衡量** | 學會了什麼、能做出什麼 | 問了多好的問題、怎麼思考 |
| **對背誦的態度** | 包含必要的知識記憶 | **刻意不教背誦**——那是 AI 的工作 |

> 第二版的精神：在 AI 時代，「記得多少」不再是競爭力，「想得多深、問得多好」才是。
> 因此老式的背誦取向**不會**出現在第二版中。

## 目錄結構

```
content/
└── samples/
    ├── water-cycle/              # 主題：水的旅行（偏「同理心」）
    │   ├── v1-traditional.md      # 第一版教材
    │   ├── v1-teacher-guide.md    # 第一版教師指引（含 45 分鐘時間配置）
    │   ├── v2-future.md           # 第二版教材
    │   └── v2-teacher-guide.md    # 第二版教師指引（不排時間、不設標準答案）
    ├── who-am-i/                 # 主題：我是誰（偏「自我認同」）
    │   ├── v1-traditional.md      # 第一版教材
    │   ├── v1-teacher-guide.md    # 第一版教師指引（含 45 分鐘時間配置）
    │   ├── v2-future.md           # 第二版教材
    │   └── v2-teacher-guide.md    # 第二版教師指引（不排時間、不設標準答案）
    ├── money-and-value/         # 主題：錢可以買到什麼（理財 + 看顧他人）
    │   ├── v1-traditional.md      # 第一版教材
    │   ├── v1-teacher-guide.md    # 第一版教師指引（含 45 分鐘時間配置）
    │   ├── v2-future.md           # 第二版教材
    │   └── v2-teacher-guide.md    # 第二版教師指引（不排時間、不設標準答案）
    └── honesty/                 # 主題：說真話的勇氣（偏「誠實／真實」）
        ├── v1-traditional.md      # 第一版教材
        ├── v1-teacher-guide.md    # 第一版教師指引（含 45 分鐘時間配置）
        ├── v2-future.md           # 第二版教材
        └── v2-teacher-guide.md    # 第二版教師指引（不排時間、不設標準答案）
```

> 四個示範主題示範計畫精神的不同切面：水的旅行偏「同理心」，我是誰偏「自我認同」，錢可以買到什麼偏「看顧最小的」，說真話的勇氣偏「誠實／真實」（以弗所書 4:25、腓立比書 4:8「真實」）。

每個主題包含**教材**（給孩子用）與**教師指引**（給陪伴者用）：

- 第一版教師指引含時間配置表，適合需要明確流程的課堂。
- 第二版教師指引刻意不排時間，並反覆提醒陪伴者：**不要限制孩子的想像力、不要給標準答案**。

## 範例

- 水的旅行：[第一版教材](samples/water-cycle/v1-traditional.md) ｜ [第一版指引](samples/water-cycle/v1-teacher-guide.md) ｜ [第二版教材](samples/water-cycle/v2-future.md) ｜ [第二版指引](samples/water-cycle/v2-teacher-guide.md)
- 我是誰：[第一版教材](samples/who-am-i/v1-traditional.md) ｜ [第一版指引](samples/who-am-i/v1-teacher-guide.md) ｜ [第二版教材](samples/who-am-i/v2-future.md) ｜ [第二版指引](samples/who-am-i/v2-teacher-guide.md)
- 錢可以買到什麼：[第一版教材](samples/money-and-value/v1-traditional.md) ｜ [第一版指引](samples/money-and-value/v1-teacher-guide.md) ｜ [第二版教材](samples/money-and-value/v2-future.md) ｜ [第二版指引](samples/money-and-value/v2-teacher-guide.md)
- 說真話的勇氣（誠實）：[第一版教材](samples/honesty/v1-traditional.md) ｜ [第一版指引](samples/honesty/v1-teacher-guide.md) ｜ [第二版教材](samples/honesty/v2-future.md) ｜ [第二版指引](samples/honesty/v2-teacher-guide.md)
