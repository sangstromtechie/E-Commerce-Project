class CreateOrderProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :order_products do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.string :name
      t.integer :quantity
      t.float :price
      t.float :tax

      t.timestamps
    end
  end
end
