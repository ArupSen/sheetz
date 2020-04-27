Rails.application.routes.draw do
  root "sheets#index"

  get "sheets" => "sheets#index"
  get "sheets/:id" => "sheets#show", as: "sheet"
end
