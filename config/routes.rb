Rails.application.routes.draw do
  root to: "main_page#index"

  post "/authenticate-user", to: "main_page#authenticate_user", as: :authenticate_user
end
