Rails.application.routes.draw do
  post '/register' => 'auth#register'
  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  resources :users, except: [:new, :edit] do
    resource :profile, shallow: true
  end

  resource :profile, except: [:new, :edit, :index, :create] do
    resources :weather_pairs, shallow: true
  end
end
