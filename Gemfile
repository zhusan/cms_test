 source 'http://ruby.taobao.org'
#source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Use mysql as the database for Active Record
gem 'mysql2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
#
#

gem 'alchemy_cms', :git => "git@github.com:zhusan/alchemy_cms.git"
gem 'alchemy-devise', :git => "git@github.com:zhusan/alchemy-devise.git"
gem 'alchemy_spree', :git => "git@github.com:zhusan/alchemy_spree.git"

# gem 'spree', :path =>  './git_path/spree'zhusae
gem 'spree', github: 'spree/spree', branch: '2-2-stable'

#API
gem 'grape'
# for api 跨域
gem 'rack-cors', require: 'rack/cors'
#包装hash
gem 'hashie'
#配置yaml设置文件
gem 'settingslogic'
#
gem 'nokogiri'
#A XML parameters parser for rails 4.0
gem 'actionpack-xml_parser'
# Bootstrap
gem 'bootstrap-sass', '~> 3.1.0'
# gem 'will_paginate', '~> 3.0'
gem 'rails-i18n', '~> 4.0.0'
gem 'kaminari'
gem 'qiniu-rs'
# gem 'qiniu'

gem 'carrierwave'
gem 'carrierwave-qiniu'
gem 'mini_magick'
#gem 'alchemy-richmedia-essences', :git => "git@github.com:magiclabs/alchemy-richmedia-essences.git", :branch => "master"

gem "harmonious_dictionary", :git => "git@github.com:zhusan/harmonious_dictionary.git"

gem 'spree_multi_domain', git: 'git://github.com/spree/spree-multi-domain.git', :branch => "2-2-stable"


gem 'spree_i18n', github: 'spree/spree_i18n', :branch => "2-2-stable"


group :development do
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  # gem 'capistrano-rbenv'
  gem 'capistrano-rvm'
  gem 'rvm1-capistrano3', :require => false
end
#net-ssh 2.8.0连接不上vps
gem "net-ssh", "~> 2.7.0"
