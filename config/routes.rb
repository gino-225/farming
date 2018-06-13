Rails.application.routes.draw do
  resources :plantings
  resources :grows
  resources :fields
  resources :crops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
