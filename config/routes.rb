Rails.application.routes.draw do
  resources :measurements
  resources :harvestings
  resources :plantings
  resources :grows
  resources :fields
  resources :crops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
