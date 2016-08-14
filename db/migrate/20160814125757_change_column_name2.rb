class ChangeColumnName2 < ActiveRecord::Migration[5.0]
  def change
  	rename_column :todo_lists, :private, :privat
  end
end
