Rails.application.routes.draw do
  post '/register' => 'auth#register'
  # patch '/confirm' => 'auth#confirm'
  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  get '/events', to: 'events#index'
  post '/events/:id', to: 'events#create'
  patch '/events/:id', to: 'events#update'

  resources :users, except: [:new, :edit]

  resources :events, except: [:new, :edit]

    # create routes for event resource
  # resources :events, except: [:new, :edit] do
    # create nested routes for the events locations
  # resources :locations, except: [:new, :edit, :update]
  end
