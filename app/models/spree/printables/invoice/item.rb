module Spree
  class Printables::Invoice::Item
    extend Spree::DisplayMoney

    attr_accessor :delivery_charge, :sku, :name, :options_text, :price,
                  :quantity, :total, :tax, :tax_code, :tax_rate

    money_methods :delivery_charge, :price, :total, :tax

    def initialize(args = {})
      args.each do |key, value|
        send("#{key}=", value)
      end
    end
  end
end