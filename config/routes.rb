Rails.application.routes.draw do
  resources :tenants
  devise_for :users
  root 'static_pages#landing_page'
  get 'dashboard', to: 'static_pages#dashboard'
end
