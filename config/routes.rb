Rails.application.routes.draw do
  root 'home#index'
  resources 'home', only: :index
  resources 'contact', only: :index
  resources :contact_form, only: %i[new create]
end
