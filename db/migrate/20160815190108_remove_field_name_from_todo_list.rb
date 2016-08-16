class RemoveFieldNameFromTodoList < ActiveRecord::Migration[5.0]
  def change
  	remove_column :todo_lists, :favorite
  	remove_column :todo_lists, :user_mark_favorite
  end
end
