Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users
  resources :tweets, only: [:index, :show, :new, :create, :edit, :update, :delete]
  resources :users, only: [:show, :new, :create, :edit, :update]
  root 'tweets#index'

end
