Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # get "/photos" => "photos#index"
    get '/contacts' => 'contacts#index'
    get '/contacts/:id' => 'contacts#show'
    post '/contacts/' => 'contacts#create'
    patch '/contacts/:id' => 'contacts#update'
    delete '/contacts/:id' => 'contacts#destroy'
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    post '/sessions' => 'sessions#create'
  end
    get '/contacts' => 'contacts#index'
    get '/contacts/new' => 'contacts#new'
    get '/contacts/:id' => 
    'contacts#show'
    post '/contacts/' => 'contacts#create'
    get '/contacts/:id/edit' => 'contacts#edit' 
    patch '/contacts/:id' => 'contacts#update'
    delete '/contacts/:id' => 'contacts#destroy'
end 
