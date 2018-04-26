class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.timestamps
      t.string :address
      t.string :label
      t.integer :user_id
    end
  end
end
