Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'about' => 'static_pages#about', as: :about
  get 'terms-of-service' => 'static_pages#terms_of_service', as: :terms_of_service
  get 'privacy-policy' => 'static_pages#privacy_policy', as: :privacy_policy
  get 'contact' => 'static_pages#contact', as: :contact
  get 'pricing' => 'static_pages#pricing', as: :pricing
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
