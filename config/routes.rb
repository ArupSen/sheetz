Rails.application.routes.draw do
  root "sheets#index"

  resources :sheets
end
