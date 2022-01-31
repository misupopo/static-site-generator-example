
# hugoをインストール
# 「https://hacknote.jp/archives/54404/」を参考
install-hugo:
	brew install hugo

# webサーバーを起動する
# buildするため初回はやや遅い
run-app:
	hugo server -D -p 8080

# 記事を作成する
create-article:
	hugo new posts/$(name).md

# 公開用に静的サイトを生成する
# public配下に作成される
generate-public:
	hugo
