Rails.application.routes.draw do
  resources :tenants do
    resources :members do
      collection do
        post :invite
      end
    end
  end
  devise_for :users
  root 'static_pages#landing_page'
  get 'dashboard', to: 'static_pages#dashboard'
end
