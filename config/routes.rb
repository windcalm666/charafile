Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :users do
    collection do
      get :search
    end
    resources :relationship, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end
  resources :cthulhus
end
