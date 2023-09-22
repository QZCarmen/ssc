class Cart < ApplicationRecord
  has_many :cart_products
  has_many :products, through: :cart_products
  belongs_to :customer, optional:true

  def add_product(product_params)

    current_item = cart_products.find_by(product_id: product_params[:product][:product_id])

    if current_item
      current_item.quantity += product_params[:product][:quantity].to_i
      current_item.save
    else
      new_item = cart_products.create(product_id: product_params[:product][:product_id],
                                  quantity: product_params[:product][:quantity],
                                  cart_id: self.id)
    end
      new_item
  end

  def cart_size
    size = 0
    self.cart_products.each do |cart_product|
      size += cart_product.quantity
    end
    size
  end

  def total_price
    cart_products.to_a.sum { |item| item.total_price }
  end
end