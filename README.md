*NomadCafe*
-----------
![image](https://user-images.githubusercontent.com/60636597/78964593-b34ef200-7b35-11ea-8a23-d118cbeeef3a.png)






*このアプリで得られる体験*
--------------------
学生や社会人でノマド（放浪）的に学習したり仕事をしたりする人向け  
wifiや電源がフリーでノマドワークに適したお店を地図、テキスト画像で表示。  
アプリを開く一手間で、  
現在地からお店までの位置をgoogle mapsで示し、即座にご案内します。  

*機能の紹介*
------
*wifiや電源がフリーでノマドワークに適したお店を表示（事前に調べて保存した情報を表示）  
*お店の営業日時、電源、料金、雰囲気をテキストや写真、動画で説明（予定）  
*GoogleCloudプラットフォーム サービスを利用（無料契約有り）  
*Maps JavaScript APIを利用し地図表示（無料）  
*Geolocation APIを利用し現在位置表示取得（無料）  
*現在地からお店までの経路案内機能の追加（予定・無料）  
*メンテナンスは管理者のみ行う、サインインしてデータの追加や編集削除を行う（予定）  
*ユーザーはサインインなしでアプリにアクセス、自由に閲覧できる  

*実装している機能一覧*
------
１）デモデータの充実　 seef.fu  
２）地図表示　GCP maps javascriput api    
３）ナビ機能　googlemap URLスキーム  
　　→本家がアプリ起動し同時にナビ開始  
４）サインイン機能(devise)  
５）簡単ログインボタン（簡易）  
６）CRUD機能（管理者のみ登録編集削除可）  
７）画像アップロード機能（carrierwave）  
８）スマホレスポンシブ機能(非Bootstrap)  
９）おすすめ度・星評価（DB取得型cssのみ）  
１０）口コミ投稿削除機能  
１１）お問合せフォーム機能（入力/確認/お礼/自動Gmail送信機能）  
   
１２）テスト（Rspec)  
１３）AWS　EC２　  
１４）自動デプロイ  
１５）Docker   
  

*使用gem一覧*
------
*gem 'haml-rails'  
*gem 'font-awesome-sass'  
*gem 'pry-rails'  
*gem 'seed-fu'  
*gem 'devise'  
*gem 'devise-i18n'  
*gem 'devise-i18n-views'  
*gem 'carrierwave'  
*gem 'mini_magick'  
*gem 'jquery-rails'  


*ポートフォリオとしての目標地点と現在地*
------------------------------
*現在地*  
○「UI/UXをそこそこ整えた」  
○「READMEをある程度書いた」  
○「実用的なデモデータをある程度登録した」  
○「GitHubのイシュー、プルリクを活用している」  
○「かんたんログイン機能を実装した」  
○「Google Maps API地図、マーカー、吹き出し機能を実装した」  
○「Geolocation API現在地取得機能を実装した」  
○「データベースへの新規登録(new,create)機能のところまで実装した」  

*目標地点*  
○「機能が豊富」  
  「管理者によるデータの新規追加、編集、削除の実装」   
  「データベース情報を取り出しmap表示させる機能の実装」  
  「YouTube Data APIを活用した雰囲気を見せる動画ビューの実装」  
  「ユーザーから管理者へのコンタクトフォームの実装」  
  「スマホビューで破綻しないレスポンシブデザインの実装」   
  「洗練したデザインの装飾をする」  

○「コードに綺麗にする」 静的コードチェックアプリを活用する  
○「テストを細かく書く」  
○「Capistranoを理解活用する」  
○「nginxを理解活用する」  
○「インフラにAWSサービスを活用する」   
○「Dockerを活用する」    
○「CircleCIを使ってCI/CDパイプラインを構築」    

あと200時間程度の工数でこれらを完了させる。  


*言語・使用技術*
------------------
●フロント  
Haml  
Scss  
JavaScript  
  
●バックエンド  
ruby 2.5.1  
Ruby on Rails 5.0.7.2  
  
●サーバー  
  
●DB  
mysql  Ver 14.14  
  
●インフラ・開発環境等（予定）  
Docker/docker-compose  
AWS（VPC, EC2, S3, Route 53, ALB, ACM）  
CircleCI（CI/CD)  
Capistrano3  
RSpec  
