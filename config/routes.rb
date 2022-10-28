Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  post "/users" => "users#create"
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  post "/sessions" => "sessions#create"
  # get "/sessions" => "sessions#index"
  # get "/sessions/:id" => "sessions#show"
  # patch "/sessions/:id" => "sessions#update"
  # delete "/sessions/:id" => "sessions#destroy"

  post "/orders" => "orders#create"
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  # patch "/orders/:id" => "orders#update"
  # delete "/orders/:id" => "orders#destroy"
end
