Priorityapp::Application.routes.draw do
  
  get '/logout' => "sessions#logout", :as => :logout
  get '/login' => "sessions#new", :as => :new_session
  post '/sessions' => "sessions#create"
  
  root :to => "tasks#index"
  
  resources :subtasks

  resources :tasks

  resources :users

  end
