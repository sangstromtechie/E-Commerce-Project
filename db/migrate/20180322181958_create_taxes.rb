class CreateTaxes < ActiveRecord::Migration[5.1]
  def change
    create_table :taxes do |t|
      t.references :provinces, foreign_key: true
      t.string :name
      t.float :rate

      t.timestamps
    end
  end
end