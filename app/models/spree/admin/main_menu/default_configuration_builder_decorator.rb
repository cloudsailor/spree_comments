# frozen_string_literal: true

module Spree
  module Admin
    module MainMenu
      module DefaultConfigurationBuilderDecorator
        def add_settings_section(root)
          items = [
            ItemBuilder.new('store', ->(store) { edit_admin_store_path(store) }).build,
            ItemBuilder.new('tax_categories', admin_tax_categories_path).
              with_manage_ability_check(Spree::TaxCategory).
              build,
            ItemBuilder.new('tax_rates', admin_tax_rates_path).with_manage_ability_check(Spree::TaxRate).build,
            ItemBuilder.new('zones', admin_zones_path).with_manage_ability_check(Spree::Zone).build,
            ItemBuilder.new('country', admin_countries_path).with_manage_ability_check(Spree::Country).build,
            ItemBuilder.new('states', ->(store) { admin_country_states_path(store.default_country) }).
              with_manage_ability_check(->(ability, store) { store.default_country && ability.can?(:manage, Spree::Country) }).
              build,
            ItemBuilder.new('shipping_methods', admin_shipping_methods_path).
              with_manage_ability_check(Spree::ShippingMethod).
              build,
            ItemBuilder.new('shipping_categories', admin_shipping_categories_path).
              with_manage_ability_check(Spree::ShippingCategory).
              build,
            ItemBuilder.new('store_credit_categories', admin_store_credit_categories_path).
              with_manage_ability_check(Spree::StoreCreditCategory).
              build,
            ItemBuilder.new('refund_reasons', admin_refund_reasons_path).
              with_manage_ability_check(Spree::RefundReason).
              build,
            ItemBuilder.new('reimbursement_types', admin_reimbursement_types_path).
              with_manage_ability_check(Spree::ReimbursementType).
              build,
            ItemBuilder.new('return_authorization_reasons', admin_return_authorization_reasons_path).
              with_manage_ability_check(Spree::ReturnAuthorizationReason).
              build,
            ItemBuilder.new('roles', admin_roles_path).with_manage_ability_check(Spree::Role).build,
            ItemBuilder.new('comment_types', admin_comment_types_path).build
          ]


          section = SectionBuilder.new('settings', 'gear-fill.svg').
                    with_availability_check(->(ability, store) { ability.can?(:manage, store) }).
                    with_label_translation_key('admin.settings').
                    with_items(items).
                    build
          root.add(section)
        end
      end
    end
  end
end
