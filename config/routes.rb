Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users do
    resources :requests, only: [:new, :create]
    resources :reviews, only: [:new, :create, :show, :index] do
      collection do
        get :own
      end
    end
  end
  resources :books
end
