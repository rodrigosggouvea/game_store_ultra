source 'https://rubygems.org'

gem 'rails', '3.2.2'
gem "paperclip", "~> 3.0"
gem 'nested_form'
gem "meta_search"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'omniauth-facebook', '1.4.0'
gem 'debugger'
gem 'awesome_print'

group :production, :staging do
  gem "pg"
end

group :development, :test do
  gem "sqlite3-ruby", "~> 1.3.0", :require => "sqlite3"
  gem "pry"
end