Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  get to: "pages#dashboard"
  #resources :sports, only: [:index, :show]
  resources :events do
    resources :messages, only: [:create]
    #resources :places, only: [:create, :update]
  end
  #resources :users, only: [:show, :new, :create, :edit, :update, :destroy] do
  resources :participations, only: [:destroy, :create, :index]
    #resources :favorite_sports, only: [:create, :destroy, :update]
  #end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"
end
