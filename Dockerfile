        #FROM(フロム)はDocker に対して ベースとなるRubyイメージを指定する
FROM ruby:2.5.1
        #run(ラン)はdocker-compose buildコマンドで実行される
        #Railsの起動に必要となるnodejsをインストールする
        #apt-getコマンドはUbuntuパッケージ管理システム＝APTライブラリを利用してパッケージ操作・管理するコマンド
        #①updateで常に新しいパッケージinstall →②-qqはエラー以外は表示しない →③常にyesの-y指定
        #→④ubuntuのbuild-essential(OS基礎開発パッケージ) → ⑤libpq-dev(OS開発パッケージ）
        #→⑥nodejs(サーバーサイドのJavaScript)  の順番でインストールする
        # \ バックスラッシュでコードを改行して見易くする       (\ はoption+¥です)
        #vimでcredentials編集したいので、vimをインストールする（nodejs下に記述したらできなかったので別に記述）
RUN apt-get update -qq && \
        apt-get install -y vim \
                        build-essential \
                        libpq-dev \
                        nodejs nodejs vim nginx

                        # nginx,vim をインストール
                                # nginx に unicornの設定ファイルをコピー
ADD ./unicorn.conf /etc/nginx/conf.d/unicorn.conf




        #今回はapp_nameという名前のディレクトリ（場所）を作ります
        #mkdir(メイクディレ)=(make directory)
        #ディレクトリ名は自由です
RUN mkdir /var/www/nomadcafe
        #WORKDIR(ワークディレ)は、RUNやADDなどの命令実行するカレントディレクトリ
        #カレントディレクトリ（作業位置）をapp_nameに移動（cdコマンドと同じ）
WORKDIR /var/www/nomadcafe
        #COPY(コピー)はローカル側のファイルをdockerイメージ側の指定したディレクトリにコピーする
        #ローカルのGemfileをapp_name/Gemfileにコピーする
        #ローカルのGemfile.lock をapp_name/Gemfile.lockにコピーする
        #docker-compose build 実行する前に、ローカルのGemfile.lock内を全削除しておきます（エラー対策）
COPY Gemfile /var/www/nomadcafe/Gemfile
COPY Gemfile.lock /var/www/nomadcafe/Gemfile.lock
COPY unicorn_error.log var/www/nomadcafe/log/unicorn_error.log
COPY unicorn.log var/www/nomadcafe/log/unicorn.log
        #gem install bundler -v 1.3.0のインストール を実行する
        #(注意) -v 1.3.0など指定しない場合、2系を自動インストールしてエラー地獄を引き起こします！（2020.4.12時点）
        #bundle install を実行する
RUN gem install bundler -v 1.3.0
RUN bundle install
        #ADD(アド)はローカル側のファイルをdockerイメージ側の指定したディレクトリに追加（コピー）する
        #ローカルの(.)カレントディレクトリをコンテナのapp_nameディレクトリに追加（コピー+解凍）する
ADD . /var/www/nomadcafe
        #ローカルの(.)で新規作成したentrypoint.shをコンテナのentrypoint.shファイルにコピーする
COPY ./entrypoint.sh /
        #chmodで（a）全てを対象に(x)実行権限を付与します
RUN chmod a+x /entrypoint.sh
        #entrypoint.shを参照し、ENTRYPOINTを実行します
ENTRYPOINT ["/entrypoint.sh"]