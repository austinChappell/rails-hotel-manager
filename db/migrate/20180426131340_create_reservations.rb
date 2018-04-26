class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.timestamps
      t.date :start
      t.date :end
      t.integer :property_id
      t.integer :user_id
    end
  end
end
