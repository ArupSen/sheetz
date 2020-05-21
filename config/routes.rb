Rails.application.routes.draw do
  root "sheets#index"

  resources :sheets

  resources :customers
end
