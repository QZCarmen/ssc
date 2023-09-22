class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :barcode
      t.text :description
      t.decimal :price
      t.string :image
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true
      t.references :tag, foreign_key: true
      t.references :collection, foreign_key: true
      t.boolean :enabled

      t.timestamps
    end
  end
end
