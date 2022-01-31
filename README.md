# static-site-generator-example
静的サイトジェネレーター HUGO のサンプルアプリケーションです。

## インストール
brewからhugoをインストールする場合です。
```
make install-hugo
```

## webサーバーの起動
localhost:8080でlistenします。
```
make run-app
```

## 記事を作成する
make create-article name="sample"を実行するとpost配下（localhost:8080/posts/sample）に
リンクページが生成されます。
```
make create-article
```

## 公開用にデプロイする
public配下に静的ページが生成されます。
公開する場合はその中身をアップロードします。
```
make generate-public
```

## overrideするcssの作り方
https://www.banjocode.com/post/hugo/custom-css/
https://www.d4af.com/post/2017/10/hugo-static-site-2/
を参考。

### themeがanankeの場合
cpコマンドで対象のhtmlをhugo側にコピーします。
```
cp themes/ananke/layouts/partials/head-additions.html layouts/partials/head-additions.html
```

head-additions.htmlに下記を追加します。
```
{{ range .Site.Params.customCSS -}}
    <link rel="stylesheet" href="{{ . | absURL }}">
{{- end }}
```

config.tomlにParamsを追加します。（Javascriptもincludeが可能）
```
[Params]
customCSS = ["css/custom.css"]
```

static/css/custom.cssを作成します。
このリポジトリではscssからのoutputで作成しています。siteimasu.

