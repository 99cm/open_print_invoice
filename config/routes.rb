Spree::Core::Engine.routes.draw do
  namespace :admin do
    # https://github.com/99cm/open/blob/master/backend/config/routes.rb#L78
    resources :orders do
      resources :bookkeeping_documents, only: :index
    end

    resource :print_invoice_settings, only: [:edit, :update]
    resources :bookkeeping_documents, only: [:index, :show]
  end
end