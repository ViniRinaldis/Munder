Rails.application.routes.draw do
  root to: "main_page#index"

  post "/authenticate-user", to: "main_page#authenticate_user", as: :authenticate_user

  get "/home", to: "users#home", as:"users_home"
  get "/new_user", to: "users#new", as: "new_user"
  post "/new_user", to: "users#create", as: "create_user"
  get "/profile/:user_profile_id", to: "users#profile", as: "profile_user"
  get "/artist/:artist_id", to: "artists#show", as: "artist"

end
