Rails.application.routes.draw do
  root "sheets#index"

  get "sheets" => "sheets#index"
  get "sheets/:id" => "sheets#show", as: "sheet"
  get "sheets/:id/edit" => "sheets#edit", as: "edit_sheet"
  patch "sheets/:id" => "sheets#update"
end
