class ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.find(params[:id])
    @cart_product=@cart.cart_products.new
  end
end
