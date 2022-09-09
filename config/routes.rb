Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/all_products", controller: "products", action: "all_products_method"
  # get "/apple_products", controller: "products", action: "apple_products_method"
  # get "/mango_products", controller: "products", action: "mango_products_method"
  # get "/banana_products", controller: "products", action: "banana_products_method"
  # get "/one_product/:id", controller: "products", action: "one_product_method"
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
end
