class ProductsController < ApplicationController
  get "/products", controller: "products", action: "products_method"
end
