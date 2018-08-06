Rails.application.routes.draw do
  devise_for :users

  get '/foos' => "users#foos"

  mount Fastengine::Engine => "/fast"

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
    member do
      get :foos
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
