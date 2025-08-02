class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all.includes(:category)
    render json: products.as_json(only: [ :id, :name, :description, :price, :stock, :image_url ])
  end

  def show
    product = Product.find(params[:id])
    render json: product.as_json(only: [ :id, :name, :description, :price, :stock, :image_url ])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Product not found" }, status: :not_found
  end
end
