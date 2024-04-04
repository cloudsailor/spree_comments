class AddCommentConfiguration
  Deface::Override.new(virtual_path: 'spree/admin/shared/_main_menu',
                      name: 'converted_admin_configurations_menu_468573024',
                      insert_bottom: "ul[data-hook='admin_orders']",
                      text: "<%= configurations_sidebar_menu_item Spree.t(:comment_types), admin_comment_types_path %>",
                      disabled: false)
end
