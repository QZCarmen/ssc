class CartProductsController < ApplicationController
  before_action :set_cart, only: [:create, :update, :destroy]
  before_action :set_cart_product, only: [:update, :destroy]

  def create
    @cart.add_product(params)

    if @cart.save
      redirect_to carts_index_path
    else
      redirect_to @product
    end
  end

  def update
    if @cart_product.update(cart_product_params)
        redirect_to carts_index_path
    else
        redirect_to carts_index_path
    end
  end

  def destroy
    @cart_product.destroy
    redirect_to carts_index_path
  end

  private
    def current_cart
      @current_cart = Cart.find(session[:cart_id])
    end

    def set_cart_product
      @cart_product = CartProduct.find(params[:id])
    end

    def cart_product_params
      params.require(:cart_product).permit(:product_id, :cart_id, :quantity)
    end
end
