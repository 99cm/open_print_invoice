class AddInvoiceDetailsToSpreeOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_orders, :invoice_number, :integer
  end
end