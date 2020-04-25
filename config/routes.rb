Rails.application.routes.draw do
  get "sheets" => "sheets#index"
  get "sheets/:id" => "sheets#show"
end
