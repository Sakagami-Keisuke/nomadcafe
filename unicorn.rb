

#Unicornの起動に必要なファイルの起き場所を指定
pid '/var/www/nomadcafe/tmp/unicorn.pid'

#unicorn.conf のupstream unicorn を指定
listen '/var/www/unicorn.sock'


# Unicornのエラーログのディレクトリを指定
stderr_path '/var/www/nomadcafe/log/unicorn_error.log'

# Unicornのログのディレクトリを指定
stdout_path '/var/www/nomadcafe/log/unicorn.log'


# Unicornは複数のワーカーで起動するのでワーカー数を定義
worker_processes 2

# 接続タイムアウト時間
timeout 30


