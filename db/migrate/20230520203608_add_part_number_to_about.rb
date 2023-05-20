class AddPartNumberToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :part_number, :string
    add_column :abouts, :price, :decimal
  end
end
