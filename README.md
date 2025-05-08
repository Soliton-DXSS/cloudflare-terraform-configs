


# Gateway Policy Backup Script

`backup.sh` は、Cloudflare Zero Trust Gateway Policy の構成を Cloudflare API 経由で取得し、環境ごとに JSON ファイルとしてバックアップ・GitHubへコミットするためのスクリプトです。

## 利用目的

- Terraform 適用後の構成を API から取得して記録
- 環境（master / poc-A / poc-B ...）ごとに構成差分を管理
- GitHub 上でバックアップ履歴を可視化

---

## 🛠事前準備

1. 環境ごとに `envs/<環境名>/backup/` ディレクトリを事前に作成しておいてください。
2. 本スクリプトはプロジェクトルート（例: `/cloudflare-terraform-configs/`）に配置します。

---

## ▶ 使い方

以下のコマンドで実行します：

```bash
bash backup.sh

実行すると、対話式で次の内容を入力します：

| 入力項目               | 説明                                                                  |
|------------------------|-----------------------------------------------------------------------|
| 環境名（例: master）   | バックアップは `envs/<環境名>/backup/` に保存されます                  |
| Cloudflare アカウントID | Cloudflare アカウントの ID を入力（表示あり）                          |
| Cloudflare API トークン | Bearer 認証に使用（非表示、セキュア入力。画面には表示されません）      |

