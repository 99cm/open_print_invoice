Deface::Override.new(
  virtual_path:  'spree/layouts/admin',
  insert_bottom: '#content-main',
  partial:       'spree/admin/shared/menu/documents_tab',
  name:          'documents_tab'
)