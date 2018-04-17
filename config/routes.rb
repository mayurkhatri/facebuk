Rails.application.routes.draw do
  devise_for :users
  get 'users/home'

  concern :albumable do
    resources :albums
  end
  concern :postable do
    resources :posts
  end

  concern :photoable do
    resources :photos
  end

  resources :users do
    resources :albums
    resources :events
  end
  resources :albums, concerns: :postable
  resources :posts, concerns: :photoable

  resources :friendships

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "users#home"
end
