# frozen_string_literal: true

Rails.application.config.after_initialize do
  settings_nav = Spree.admin.navigation.settings

  settings_nav.add :comment_types,
    label: :comment_types,
    url: -> { spree.admin_comment_types_path },
    icon: 'book',
    if: -> { can?(:manage, Spree::CommentType) }
end
