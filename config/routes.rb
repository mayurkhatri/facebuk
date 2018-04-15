Rails.application.routes.draw do
  devise_for :users
  get 'users/home'
  resources :users do
    resources :posts
  end
  resources :friendships
  resources :albums
  resources :events
  resources :photos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "users#home"
end
