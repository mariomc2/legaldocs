# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

$ rails new legaldocs
$ cd legaldocs
$ rails g scaffold user name:string role:belongs_to
$ rails g scaffold role name:string description:string
$ rails g scaffold item name:string description:text 'price:decimal{5,2}', file_path:string document:text user:belongs_to
$ rails g scaffold template name:string description:text 'price:decimal{5,2}', form:text
$ rails db:migrate

Add gem "devise" to Gemfile
$ bundle install
$ rails g devise:install
Make changes as advised

$ rails g devise User
$ rails db:migrate

fill seeds.rb
$ rails db:seed

$ rails g devise:views

Add gem 'cancancan', '~> 1.10' to Gemfile
$ bundle install
$ rails g cancan:ability


Add gem 'ckeditor' to Gemfile
$ bundle install
