class ChangeColumnNameInUserTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :lsat_name, :last_name
  end
end
