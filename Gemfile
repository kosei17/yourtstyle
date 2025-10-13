source "https://rubygems.org"

ruby "3.2.8"

# Rails 本体
gem "rails", "~> 7.1.3"

# Webサーバー（Renderで実行）
gem "puma", ">= 5.0"

# アセット関連
gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

# 画像アップロード
gem "image_processing", "~> 1.2"

# Devise（ユーザー認証）
gem "devise", "~> 4.9"

gem "cloudinary"
gem "activestorage-cloudinary-service"

# Windows用
gem "tzinfo-data", platforms: %i[windows jruby]

# 起動高速化
gem "bootsnap", require: false

group :development, :test do
  # ローカル開発ではSQLiteを使ってOK
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[mri windows]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# 本番環境はPostgreSQL
group :production do
  gem "pg", "~> 1.4"
end
