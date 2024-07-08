Rails.application.routes.draw do
  devise_for :users
  resources :membros
  get "up" => "rails/health#show", as: :rails_health_check
  
  devise_scope :user do
    authenticated :user do
      root to: 'membros#index', as: :authenticated_root
    end

    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get 'home/about'
end
