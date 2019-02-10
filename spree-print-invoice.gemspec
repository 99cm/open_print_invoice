lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'open_print_invoice/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'open_print_invoice'
  s.version     = Spree::PrintInvoice.version
  s.summary     = 'Print invoices and slips from Open Store'
  s.description = s.summary

  s.authors      = ['Spree Community', 'Open 99cm']
  s.email        = 'dotcom@china-guide.com'
  s.homepage     = 'https://github.com/99cm/open_print_invoice'
  s.license      = 'BSD-3'

  s.required_ruby_version = '>= 2.5.0'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'

  s.add_dependency 'prawn-rails', '~> 1.2.0'
  s.add_dependency 'open_core'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3', '~> 1.3.6'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'ffaker'
end