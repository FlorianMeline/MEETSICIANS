Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resource :profile, only: [:show, :edit, :update, :post]

  resources :bands, only: [:index, :create, :show, :new, :delete, :update, :edit] do
    resources :chatroom, only: :create
    delete '/users/:id', to: 'users#delete_user', as: 'delete_user'
  end


  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end

end
