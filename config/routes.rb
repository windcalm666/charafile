Rails.application.routes.draw do
  devise_for :users
  root to: "characters#index"
  resources :characters do
    collection do
      post 'search'
    end
  end
end
