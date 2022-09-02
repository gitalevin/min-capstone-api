class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    product.save
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params["id"])
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "Product successfully destroyed!" }
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json(methods: [:friendly_created_at, :is_discounted?, :tax, :total])
  end

  def apple_products_method
    product = Product.first
    render json: product.as_json
  end

  def mango_products_method
    product = Product.second
    render json: product.as_json
  end

  def banana_products_method
    product = Product.third
    render json: product.as_json
  end

  def one_product_method
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
