class AddFielsToTodoList < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :status, :boolean
  end
end
