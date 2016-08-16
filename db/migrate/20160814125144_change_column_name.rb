class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :todo_lists, :status, :private
  end
end
