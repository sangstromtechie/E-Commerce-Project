class CreateProvinceTaxes < ActiveRecord::Migration[5.1]
  def change
    create_table :province_taxes do |t|
      t.references :province, foreign_key: true
      t.references :tax, foreign_key: true
      t.decimal :rate

      t.timestamps
    end
  end
end
