class AddGovernmentTaxToProvince < ActiveRecord::Migration[5.2]
  def change
    add_column :provinces, :government_tax, :decimal
  end
end
