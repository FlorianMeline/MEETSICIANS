Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resource :profile, only: [:show]

  resources :bands, only: [:index, :create, :show, :new, :update, :destroy] do
    resources :chatroom, only: :create
  end

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end
end
