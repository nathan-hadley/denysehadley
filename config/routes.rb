Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get 'contact/index'
  resources :contact_form, only: %i[new create]
end
