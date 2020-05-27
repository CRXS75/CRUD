Rails.application.routes.draw do

  root :to => 'articles#index'

  resources :users, :only => [:new, :create, :edit, :show, :destroy]
  get '/signup' => 'users#new'

  resources :articles
  get '/desta' => 'articles#newdestroy'

  resources :groups
  get '/join' => 'groups#join'
  get 'quit' => 'groups#quit'
  get '/destg' => 'groups#newdestroy'

  resources :sessions, :only => [:new, :create, :destroy]
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
