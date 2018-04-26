class AddCityStateToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :city, :string
    add_column :properties, :state, :string
    add_column :properties, :zip_code, :string
  end
end
