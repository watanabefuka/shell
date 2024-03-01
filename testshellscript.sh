#!/bin/bash

# PostgreSQL接続情報
#!/bin/bash

# PostgreSQL接続情報
#!/bin/bash

# PostgreSQL接続情報
PGHOST="localhost"
PGUSER="postgres"
PGDATABASE="your_database"
PGPASSWORD="your_password"

# バックアップディレクトリ
BACKUP_DIR="/path/to/backup/directory"

# バックアップファイル名に使用するタイムスタンプ
TIMESTAMP=$(date +%Y%m%d%H%M%S)

# pg_dumpコマンドでデータベースをバックアップ
echo "バックアップを開始します..."
pg_dump -h $PGHOST -U $PGUSER -d $PGDATABASE -w > $BACKUP_DIR/backup_$TIMESTAMP.sql

# バックアップの成功/失敗をチェック
if [ $? -eq 0 ]; then
  echo "バックアップが正常に完了しました。"
else
  echo "バックアップ中にエラーが発生しました。"
  exit 1
fi

# 古いバックアップファイルを削除（任意）
# 例えば、古いバックアップファイルを10日以上残す場合
# find $BACKUP_DIR -name "backup_*.sql" -mtime +10 -exec rm {} \;

echo "バックアップファイル: backup_$TIMESTAMP.sql"
echo "バックアップが完了しました。"
した。
