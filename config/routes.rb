Rails.application.routes.draw do
  namespace :user do
    root :to => "dashboard#index"
  end
  namespace :dashboard do
    get 'onboarding/user_profile'
    get 'onboarding/organization_profile'
    resources :organization_profiles
    resources :user_profiles
  end
  get 'dashboard' => 'dashboard#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    unlocks: 'users/unlocks'
  }
  get 'invitations/success' =>  'invitations#list'

  root to: 'static_pages#home'
  get 'about' => 'static_pages#about', as: :about
  get 'terms-of-service' => 'static_pages#terms_of_service', as: :terms_of_service
  get 'privacy-policy' => 'static_pages#privacy_policy', as: :privacy_policy
  get 'support' => 'static_pages#support', as: :support
  get 'pricing' => 'static_pages#pricing', as: :pricing

  resources :invitations
end
