Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  resources :posts do
    resources :comments
  end
  root "posts#index"

  get "/about", to: "pages#about"
end
