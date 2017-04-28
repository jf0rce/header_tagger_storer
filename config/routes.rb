Rails.application.routes.draw do
  post 'url_addresses/parse'

  get 'url_addresses', to: 'url_addresses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
