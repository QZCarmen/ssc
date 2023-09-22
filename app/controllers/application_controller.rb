class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_to_use_menu, :set_cart

  # private

  def set_to_use_menu
    @menu = Type.order('name').includes(:categories)
    @alpha = Collection.all.order('name').group_by { |u| u.name[0].capitalize }
    @alpha2 = Brand.all.order('name').group_by { |u| u.name[0].capitalize }
  end



  def set_cart
    @total =0
    if customer_signed_in?
      if current_customer.cart.nil?
        if session[:cart_id]
          current_customer.cart=Cart.find(session[:cart_id])
        else
          current_customer.cart.create
        end
      end
      @cart = current_customer.cart
      if @cart.cart_products.size >0
        @cart.cart_products.each do |c|
          @total=@total+c.quantity
        end
      end
    else
      if session[:cart_id]
        @cart =Cart.find(session[:cart_id])
        if @cart.cart_products.size >0
          @cart.cart_products.each do |c|
            @total=@total+c.quantity
          end
        end
      else
        @cart = Cart.create
        session[:cart_id]=@cart.id
      end
    end
  end


  def shove_products_from_guest_to_customer
    if session[:cart_id]
      guest_cart =Cart.find(session[:cart_id])
      guest_cart.card_products.each{
        |product| CartProduct.create(cart_id:@cart.id,product_id: product.id)
      }
      CartProduct.where(cart_id:guest_cart.id).delete_all
      guest_cart.destroy
      session[:cart_id]=nil
    end
  end




end
