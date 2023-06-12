Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"


  resource :profile, only: [:show, :edit, :update, :post] do
    resources :users, only: [:edit, :update]
  end

  resources :bands, only: [:index, :create, :show, :new, :edit, :update, :destroy] do
    resources :chatroom, only: :create
  end

  resources :users, only: [:update, :post]

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end
end
