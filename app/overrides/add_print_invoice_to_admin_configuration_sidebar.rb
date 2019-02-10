Deface::Override.new(
  virtual_path:  'spree/admin/shared/_configuration_menu',
  name:          'print_invoice_admin_configurations_menu',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text:          '<%= configurations_sidebar_menu_item I18n.t('spree.settings', scope: :print_invoice),
                      spree.edit_admin_print_invoice_settings_path %>'
)