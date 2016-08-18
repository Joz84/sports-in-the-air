Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :favorite_sports, only: [:index, :create, :destroy, :update]

  root to: "pages#dashboard", constraints: lambda { |r| r.env["warden"].authenticate? }
  root to: "pages#home"

  get "/dashboard/", to: "pages#dashboard"
  #resources :sports, only: [:index, :show]
  resources :events do
    resources :messages, only: [:create]
    resources :participations, only: [:destroy, :create]
    #resources :places, only: [:create, :update]
  end
  #resources :users, only: [:show, :new, :create, :edit, :update, :destroy] do
  resources :participations, only: [:index]
  #end

  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # mount Attachinary::Engine => "/attachinary"
end
