Rails.application.routes.draw do
  resources :products
  resources :profiles
  resources :normal_payments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
