# frozen_string_literal: true

Rails.application.config.after_initialize do
  Spree::Admin::MainMenu::DefaultConfigurationBuilder.prepend Spree::Admin::MainMenu::DefaultConfigurationBuilderDecorator
  Rails.application.config.spree_backend.main_menu = Spree::Admin::MainMenu::DefaultConfigurationBuilder.new.build
end
