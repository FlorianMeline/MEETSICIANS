Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bands, only: [:index, :create, :show, :new, :update, :delete] do
    resources :chatroom, only: :create
  end

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end
end
