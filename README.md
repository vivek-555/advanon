# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.3.3

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Development steps
```` 
# rvm gemset create 'ruby-2.3.3-at-advanon'
# rvm gemset use ruby-2.3.3-at-advanon
# gem install rails
# rails new advanon -d postgresql
# rails generate scaffold Bookmark title:string url:string short_url:string
# rake db:setup
# rake db:migrate

# rails generate devise:install
# rails generate devise:views
# rails generate devise User
# rake db:migrate

# rails generate scaffold Website top_level_domain:string
# rake db:migrate

# rails generate migration AddUserToBookmark user_id:integer
# rake db:migrate

# rails generate migration AddWebsiteToBookmark website_id:string
# rake db:migrate

# rails generate model tag name:string
# rails generate model tagging bookmark:belongs_to tag:belongs_to