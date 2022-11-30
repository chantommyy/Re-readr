Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :books
  # Defines the root path route ("/")
  # root "articles#index"
  resources :books do
    resources :reviews, only: [:new, :create, :show, :index]
  end
end
