Spree Comments
==============

* It only supports Spree 4.4, Rails 6.1, Ruby 3.0.2, not tested on other versions.

Spree Comments is an extension for Spree to allow commenting Orders in admin ui.

Spree Comments supports comment Types which can be defined per comment-able via the admin Configuration tab.

This is based on a fork / rename of spree-contrib/spree_comments.

Notes:

* Comments are create-only.  You cannot edit or remove them from the Admin UI.

Installation
------------

Add the following to your Gemfile (or check Versionfile for Spree versions requirements):

    gem 'spree_comments', github: 'cloudsailor/spree_comments'
    gem 'acts_as_commentable', github: 'fatfreecrm/acts_as_commentable', branch: 'rails-61'

Run:

```shell
bundle install
bundle exec rails g spree_comments:install
```

Run the migrations if you did not during the installation generator:

    bundle exec rake db:migrate

Start your server: 

    rails s
