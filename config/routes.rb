Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  get '/mydashboard', to: 'pages#mydashboard'
  resources :books do
    resources :requests, only: [:create]
  end
    resources :reviews, only: [:new, :create, :show, :index] do
      collection do
        get :own
      end
    end

end
