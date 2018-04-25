class AddNameToRentals < ActiveRecord::Migration[5.1]
  def change
    add_column :rentals, :label, :string
  end
end
