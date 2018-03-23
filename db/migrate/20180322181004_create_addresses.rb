class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.references :address_type, foreign_key: true
      t.references :province, foreign_key: true
      t.integer :aptno
      t.string :street
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
