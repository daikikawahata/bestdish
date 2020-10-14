Rails.application.routes.draw do
  devise_for :users
  root to: 'shops#index'
  resources :shops do
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
