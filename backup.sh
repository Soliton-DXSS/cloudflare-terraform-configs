#!/bin/bash
set -e

read -p "📦 環境名を入力してください（例：master / poc-A）: " ENV_NAME
read -p "🔑 Cloudflare アカウントID: " ACCOUNT_ID
read -s -p "🔐 Cloudflare APIトークン（入力は非表示）: " API_TOKEN
echo ""

BACKUP_DIR="envs/${ENV_NAME}/backup"

if [ ! -d "${BACKUP_DIR}" ]; then
  echo "❌ バックアップディレクトリが存在しません: ${BACKUP_DIR}"
  echo "   手動で作成してから再実行してください。"
  exit 1
fi

DATE=$(date +"%Y%m%d_%H%M%S")
FILE="${BACKUP_DIR}/gateway_policies_${DATE}.json"

echo "📥 Cloudflareからポリシーを取得中..."

curl -s -X GET "https://api.cloudflare.com/client/v4/accounts/${ACCOUNT_ID}/gateway/rules" \
  -H "Authorization: Bearer ${API_TOKEN}" \
  -H "Content-Type: application/json" \
  | jq '.' > "${FILE}"

echo "✅ バックアップ保存完了: ${FILE}"

git add "${FILE}"
git commit -m "Backup gateway policies for ${ENV_NAME} on ${DATE}"
git push

echo "🚀 Gitにバックアップをコミット＆プッシュしました。"