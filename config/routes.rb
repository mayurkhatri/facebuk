Rails.application.routes.draw do
  devise_for :users

  concern :albumable do
    resources :albums
  end
  concern :postable do
    resources :posts
  end

  resources :pages
  resources :users do
    member do
      get :home
    end
    resources :albums
    resources :photos
  end
  resources :events
  resources :albums, concerns: :postable
  resources :posts
  resources :friendships

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "users#home"
end
