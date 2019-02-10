module Spree
  class Printables::Order::InvoiceView < Printables::Invoice::BaseView
    def_delegators :@printable,
                   :email,
                   :bill_address,
                   :ship_address,
                   :tax_address,
                   :item_total,
                   :total,
                   :payments,
                   :shipments,
                   :delivery_charges

    def items
      printable.line_items.map do |item|
        tax = item.adjustments.eligible.sum(:amount)
        tax_cat = item.tax_category
        tax_rate = tax_cat ? tax_cat.tax_rates.sum(:amount) * 100 : 0
        Spree::Printables::Invoice::Item.new(
          sku: item.variant.sku,
          name: item.variant.name,
          options_text: item.variant.options_text,
          price: item.price,
          quantity: item.quantity,
          total: item.total,
          tax: tax,
          tax_code: tax_cat.try(:tax_code),
          tax_rate: tax_rate,
          delivery_charge: item.delivery_charge
        )
      end
    end

    def firstname
      printable.tax_address.firstname
    end

    def lastname
      printable.tax_address.lastname
    end

    private

    def all_adjustments
      printable.adjustments.eligible
    end
  end
end