class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :email
      t.string :first_name
      t.string :lsat_name
      t.string :gender
      t.date :dob
    end
  end
end
