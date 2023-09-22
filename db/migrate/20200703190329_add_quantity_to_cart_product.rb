class AddQuantityToCartProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_products, :quantity, :int
  end
end
