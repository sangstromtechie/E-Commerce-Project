class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.text :description
      t.string :image
      t.string :status
      t.float :price
      t.integer :instock

      t.timestamps
    end
  end
end
