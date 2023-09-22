class AddQuantityToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :quantity, :int
  end
end
