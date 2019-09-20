Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/terms_of_service'
  get 'static_pages/privacy_policy'
  get 'static_pages/contact'
  get 'static_pages/pricing'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
