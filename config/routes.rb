Rails.application.routes.draw do
  root 'lists#index'


  resources :lists, only: [:show, :create, :update, :destroy] do
    resources :items, only: [:create, :update]
  end
end
