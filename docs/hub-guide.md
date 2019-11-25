HUBを直接インストール
hubをインストールすると、vscode の端末からプルリクエストを作成でき、github のページを表示しないで済むため、便利です。

windows の場合のインストール法は次の通りです。

hubインストーラーをダウンロードしinstall.batをたたく（ここではhub 2.5.0 for Windows 64-bit)
次のように表示されればOK 
% hub version
hub version 2.3.0

vscode の端末で、ブランチをコミットした後、次を実行します。

  % git push -u origin 名前/`issue番号`
  % hub pull-request -i `issue番号` -h 名前/`issue番号`

https://github.com/github/hub/releases
