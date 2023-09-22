class AddProvinceTaxToProvince < ActiveRecord::Migration[5.2]
  def change
    add_column :provinces, :province_tax, :decimal
  end
end
