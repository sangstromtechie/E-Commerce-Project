class CreateTaxes < ActiveRecord::Migration[5.1]
  def change
    create_table :taxes do |t|
      t.references :province, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
