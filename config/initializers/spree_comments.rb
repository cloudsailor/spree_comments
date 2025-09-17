# frozen_string_literal: true

Rails.application.config.after_initialize do
  Rails.application.config.spree_admin.settings_nav_partials << 'spree/admin/shared/link_to_comment_types'
end
