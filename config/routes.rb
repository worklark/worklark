Rails.application.routes.draw do
  resources :invitations
  root to: 'static_pages#home'
  get 'about' => 'static_pages#about', as: :about
  get 'terms-of-service' => 'static_pages#terms_of_service', as: :terms_of_service
  get 'privacy-policy' => 'static_pages#privacy_policy', as: :privacy_policy
  get 'support' => 'static_pages#support', as: :support
  get 'pricing' => 'static_pages#pricing', as: :pricing
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
