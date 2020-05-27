**個人制作アプリ NomadCafe**
----------

|root|かんたんログイン|カフェ一覧|カフェ詳細|
|---|---|---|---|
|![](https://user-images.githubusercontent.com/60636597/82975335-17ab0f80-a017-11ea-82f6-2ed8f5df1161.PNG)|![](https://user-images.githubusercontent.com/60636597/82975362-2bef0c80-a017-11ea-84f1-188202c066eb.PNG)|![](https://user-images.githubusercontent.com/60636597/82975390-4628ea80-a017-11ea-86f5-dabf1d11f84e.PNG)|![](https://user-images.githubusercontent.com/60636597/82975443-66f14000-a017-11ea-84fa-caddfd97815b.PNG)|  
|カフェ紹詳細|カフェサイト遷移|ナビURLスキーム|
|![](https://user-images.githubusercontent.com/60636597/82976519-42e32e00-a01a-11ea-99a4-16082d065a38.PNG)|![](https://user-images.githubusercontent.com/60636597/82976951-6bb7f300-a01b-11ea-95ed-8dea15efef2f.PNG)|![](https://user-images.githubusercontent.com/60636597/82977033-9d30be80-a01b-11ea-8683-0223d23f1531.PNG)|  


**開発に対する想い**
----------
**ビフォアコロナのアイデアです<br>**
**■FreeWifi+Free電源のカフェは生活必需のインフラである<br>**
&emsp;&emsp;私は福岡市に引越しした時、真っ先に探したのがスーパーマーケットとFreeWifi＋Free電源のあるカフェでした<br>
**■正確、最新、集約的なFreeWifi+Free電源のカフェの情報は、ググってもありませんでした<br>**
&emsp;&emsp;個人ブログ記事が散見される程度で情報収集に非常に苦労しました<br>
**■スマホアプリでも、FreeWifi+Free電源のカフェの情報はありませんでした<br>**
&emsp;&emsp;スマホをワン・ツータッチでFreeWifi+Free電源のカフェを選んで現在地からGMapナビする<br>
&emsp;&emsp;ここでいう「簡単」の概念はブラウジングではなくスマホ操作で非常に簡単に目的達成できるということ<br>
&emsp;&emsp;もしこのアプリがあれば自分のスマホに入れて使うだろうなぁ、自分で作ってみよう！と思いました<br><br>
**■ターゲット、マネタイズ化、スケール化<br>**
&emsp;&emsp;ターゲット（ペルソナー）はスタバに居そうな中学生〜大学生層、サラリーマン・フリーランス層、セミリタイア層<br>
&emsp;&emsp;彼らは一定時間をPCやスマホでネットアクセスしながら自習したり業務して過ごすノマドワーカースタイル<br>
&emsp;&emsp;ノマドワーカーとは、”遊牧民的”に移動しながら作業する人たちの呼び名です<br>
&emsp;&emsp;このアプリはアプリストアリリースし、スマホサービスメインで、アドセンス広告による収益化を想定<br>

**このアプリで得られる体験**
----------
●ノマドワークに適したFreeWifi+Free電源のカフェをGoogleMap、テキストや画像で表示します<br>
●アプリを開いてすぐに、どんなカフェがあるか具体的な写真で見せて、現在地から行きたいお店まで経路をナビします <br> 
●ユーザーにコメント機能で口コミを共有できます<br>
●お問い合わせフォームで、ユーザー側からの掲載情報更新の要請などに応えます<br>

**実装を完了した機能の一覧**
----------
**１）デモデータの充実(起動時にdb:seef.fuコマンドでモデルに事前投入）<br>**
&emsp;&emsp;デモデータ:19件、 デモ画像:95枚<br>
**２）GoogleMaps地図表示、現在地取得　(Google Cloud Platformサービス maps javascriput API使用) <br>**
&emsp;&emsp;２種類の地図表示　（お店一覧ページで全店舗の吹き出し表示、お店詳細ページでそのお店だけの吹き出し表示）<br>
**３）ナビ機能　googlemap URLスキーム（外部依存）利用 <br>**
&emsp;&emsp;お店一覧ページで全店舗の吹き出し表示のリンク、お店詳細ページでナビボタン押下で起動 <br>
&emsp;&emsp;→本家がアプリ起動し同時にナビ開始<br>
**４）サインイン機能(devise) <br>**
&emsp;&emsp;手軽に使ってもらうため、ニックネーム、パスワードのみにカスタム <br>
**５）簡単ログインボタン <br>**
&emsp;&emsp;管理者やユーザーとして、簡単にテストログインできる  <br>
**６）CRUD機能（管理者のみ登録編集削除可） <br>**
&emsp;&emsp;管理者はお店情報、画像、コメントを登録、編集、削除可能 <br>
**7）コメント（口コミ）投稿削除機能<br>**
&emsp;&emsp;ユーザーはコメントの登録、削除のみ可能<br>
**8）画像アップロード機能（carrierwave）<br>**
**9）スマホレスポンシブ機能  <br>**
&emsp;&emsp;非Bootstrap、スクラッチ <br>
**10）おすすめ度・星評価（レートDB取得css表示）  <br>**
**11）お問合せフォーム機能（入力/確認/お礼/自動Gmail送信機能）<br>**
&emsp;&emsp;サインインアウト状態問わず、お問い合わせフォームに遷移でき、メッセージ送信で自動でgmailが管理者に届く <br>
**12)Docker、docker-composeローカル開発<br>**
&emsp;&emsp;ローカル環境にてDocker実装、Dockerfile、Docker-composeにてイメージ、コンテナを管理<br>
**13）テストの実施（model)<br>**
&emsp;&emsp;RSpec、factory_bot使用<br>
**14）Docker環境をやめて、手動デプロイ変更 rails＋unicorn+nginx**
&emsp;&emsp;Rails環境リポジトリ=nomadcafe-sub<br>
&emsp;&emsp;Docker環境リポジトリ=nomadcafe<br><br>
〜以下、CircleCI自動デプロイ作業=nomadcafe-subリポジトリ〜<br>
**15）独自ドメイン取得、AWS Route53DNS、Let’s Encryptで無料SSL証明書取得、HTTPS接続設定**<br>
**16）スマートフォン実機でのアプリ動作、マップ表示、現在地取得、ナビURLスキーム検証、CSS調整**<br>
**17）CI/CD CircleCI masterpush自動デプロイ化（学習作業中）**<br><br>
**18）課題：EC2インスタンスコスト縮減　定時自動起動停止(Lambda とCloudWatch)** <br>
 
**Qiita投稿 現在10記事　他執筆中**
----------    
https://qiita.com/SakagamiKeisuke

**開発日数**
----------
**作業期間　2020年3月29日　〜 2020年5月26日<br>**
のべ工数　61日/426時間 <br>


**雑食系サロン等を参考に、自身でマイルストーンを決めて開発作業を実施**
------------------------------
○ GitHubのイシュー＋プルリク活用<br>
○ twitter発信、Qiitaアウトプット投稿(初学者がわかるように)並行<br>
○ UI/UXを整える<br>
○ READMEを整える<br>
○ 実用的なデモデータ登録<br>
○ かんたんログイン機能実装<br>
○ CRUD(create,read,update,destroy)実装<br>
○ Google Maps API地図、マーカー、吹き出し機能実装<br>
○ データベース情報を取得しmap表示する機能実装<br>
○ ユーザーから管理者への問合せフォーム実装<br>
○ スマホビューで破綻しないレスポンシブデザイン実装<br>
○ スクラッチCSSである程度装飾<br>
○ コードに綺麗にする・静的コードチェックアプリ活用<br>
○ RSpecテストを実施<br>
○ Nginx,Unicorn,Puma,Rake,railsサーバー役割理解<br>
○ webサーバー nginx理解活用<br>
○ インフラにAWS/EC2サービス活用(一時VPC,ECR使用,ECSは中止）<br>
○ Docker（コンテナサービス）活用<br>
○ CI/CD CircleCI活用(作業中)<br>

**言語・使用技術**
----------
**●フロント<br>**
&emsp;&emsp;Haml/scss/JavaScript<br>
**●バックエンド<br>**
&emsp;&emsp;ruby 2.5.1 <br>
&emsp;&emsp;Ruby on Rails 5.2.4.2<br>
**●データベース<br>**
&emsp;&emsp;MySQL5.6
**●テスト<br>**
&emsp;&emsp;RSpec, factory_bot<br> 
**●インフラ<br>**
&emsp;&emsp;AWS EC2 Linux2 t3small,Route 53 <br>
**●本番環境<br>**
&emsp;&emsp;Nginx手動デプロイ<br>
&emsp;&emsp;独自ドメイン、SSL/HTTPS<br>
&emsp;&emsp;CircleCI（作業中） <br>

**連絡先**
----------
**坂上計介 サカガミケイスケ
&emsp;&emsp;Gmail / iwayasunset@gmail.com** &emsp;&emsp;twitter / https://twitter.com/slope_top_kei
