Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "login#index"

  resources :ranktables do
    resources :votes
  end

  resources :votes

  resources :login

  get "/register", to: redirect("/auth/google_oauth2")
  get "/auth/google_oauth2/callback", to: redirect("/ranktables")


end
