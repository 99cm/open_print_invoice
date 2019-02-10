header = [
  pdf.make_cell(content: I18n.t('spree.sku')),
  pdf.make_cell(content: I18n.t('spree.item_description')),
  pdf.make_cell(content: I18n.t('spree.options')),
  pdf.make_cell(content: I18n.t('spree.price')),
  pdf.make_cell(content: I18n.t('spree.price')),
  pdf.make_cell(content: I18n.t('spree.qty')),
  pdf.make_cell(content: I18n.t('spree.total'))
]
data = [header]

invoice.items.each do |item|
  row = [
    item.sku,
    item.name,
    item.options_text,
    item.display_price.to_s,
    item.display_tax_rate.to_s,
    item.quantity,
    item.display_total.to_s
  ]
  data += [row]
end

column_widths = [0.13, 0.37, 0.12, 0.12, 0.12, 0.075, 0.13].map { |w| w * pdf.bounds.width }

pdf.table(data, header: true, position: :center, column_widths: column_widths) do
  row(0).style align: :center, font_style: :bold
  column(0..2).style align: :left
  column(3..7).style align: :right
end