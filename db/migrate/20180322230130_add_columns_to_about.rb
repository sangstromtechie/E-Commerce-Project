class AddColumnsToAbout < ActiveRecord::Migration[5.1]
  def change
    add_column :abouts, :name, :string
    add_column :abouts, :email, :string
  end
end
