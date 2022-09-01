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
end
