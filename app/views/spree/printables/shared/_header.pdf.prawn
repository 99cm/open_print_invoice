im = Rails.application.assets_manifest.find_sources(Spree::PrintInvoice::Config[:logo_path])

if im && File.exist?(im.pathname)
  pdf.image im.filename, vposition: :top, height: 40, scale: Spree::PrintInvoice::Config[:logo_scale]
end

pdf.grid([0,3], [1,4]).bounding_box do
  pdf.text I18n.t(printable.document_type, scope: :print_invoice), align: :right, style: :bold, size: 18
  pdf.move_down 4

  pdf.text I18n.t('spree.invoice_number', number: printable.number), align: :right
  pdf.move_down 2
  pdf.text I18n.t('spree.invoice_date', date: I18n.l(printable.date)), align: :right
end