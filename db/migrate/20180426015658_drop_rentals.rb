class DropRentals < ActiveRecord::Migration[5.1]
  def change
    drop_table :rentals
  end
end
