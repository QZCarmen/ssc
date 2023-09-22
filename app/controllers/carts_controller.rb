class CartsController < ApplicationController

  def index
    @cart_products = @cart.cart_products
  end

end
