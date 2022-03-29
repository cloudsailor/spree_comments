# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform  = Gem::Platform::RUBY
  s.name      = 'spree_comments'
  s.version   = '4.4.0'
  s.summary   = 'Comments for orders'
  s.required_ruby_version = '>= 3.0.2'

  s.author    = 'Rails Dog'
  s.email     = 'gems@railsdog.com'
  s.homepage  = 'https://github.com/spree-contrib/spree_comments'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path  = 'lib'
  s.requirements << 'none'

  spree_version = '>= 4.3.0', '< 5.0'
  s.add_dependency 'spree_api', spree_version
  s.add_dependency 'spree_backend', spree_version
  s.add_dependency 'spree_core', spree_version
  s.add_dependency 'spree_extension'
  s.add_dependency 'acts_as_commentable'
  s.add_dependency 'deface', '~> 1.0'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'sprockets-rails'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'appraisal'
end
