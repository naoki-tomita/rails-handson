* 設定よりルールという思想で作られている
* ファイルを置く場所が重要

# rubyのインストール
* rbenvをインストール
* `rbenv install --list` インストール可能な一覧を出力する
* `rbenv install 3.2.3` インストール
* `rbenv local 3.2.3` .ruby-versionが作られる

# railsをインストールする
* `bundle init` Gemfileの初期化
* Gemfileの編集 `gem "rails"` を追加
* `bundle install`
* `rails new -d postgresql .` カレントディレクトリにrailsのプロジェクトを新規作成。DBはポスグレを使う
* postgresql用のライブラリが入ってねえと怒られるので `brew install libpq` してパス通す
* あらためて `bundle install`

# 起動する
* db起動 `docker compose up`
* rails起動 `bundle exec rails s`
* `localhost:3000` にアクセスするといい感じ

# テストの用意
* railsにはminitestが入っているが、人気ないらしい。rspecを使う。
* Gemfileのgroup developのところに `gem "rpec-rails"`
* `bundle exec rails generate rspec:install` でテストに必要なものを入れてくれる

# モデルをつくる
* モデルはテーブルと一致する
* `bundle exec rails g scaffold Todo` Todoモデルと関係するありとあらゆるものを作る
* `bundle exec rails db:migrate` DBにテーブルを作ってくれる
* `app/controllers/todo_controller.rb` ができててやばい
