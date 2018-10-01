Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#show"

  resources :ranktables do
    resources :votes
  end

  resources :votes

  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'home', to: 'home#show'
  get 'me', to: 'me#show', as: 'me'

  root to: "home#show"

  get "/register", to: redirect("/auth/google_oauth2")
  get "/auth/google_oauth2/callback", to: redirect("/ranktables")


end
