class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.string :address
      t.integer :user_id
      t.timestamps
    end
  end
end
