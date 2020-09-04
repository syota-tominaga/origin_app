Rails.application.routes.draw do
  devise_for :users
  root 'memories#index'
  resources :memories, only: [:index, :new, :create, :show, :edit, :destroy]
  resources :goals, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
