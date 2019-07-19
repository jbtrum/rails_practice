Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'items#index'
  devise_for :users
  resources :items do
    member do
      get 'toggle'
    end
  end
end
