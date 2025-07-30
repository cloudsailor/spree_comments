Spree Comments
==============

* It only supports Spree 5.0.3, Rails 7.2, Ruby 3.3.8, not tested on other versions.

Spree Comments is an extension for Spree to allow commenting Orders in admin ui.

Spree Comments supports comment Types which can be defined per comment-able via the admin Configuration tab.

This is based on a fork / rename of spree-contrib/spree_comments.

Notes:

* Comments are create-only.  You cannot edit or remove them from the Admin UI.

Installation
------------

Add the following to your Gemfile (or check Versionfile for Spree versions requirements):

    gem 'spree_comments', github: 'cloudsailor/spree_comments'
    gem 'acts_as_commentable', git: 'https://github.com/jibranusman95/acts_as_commentable.git'

Run:

```shell
bundle install
bundle exec rails g spree_comments:install
```

Run the migrations if you did not during the installation generator:

    bundle exec rake db:migrate

Start your server: 

    rails s
