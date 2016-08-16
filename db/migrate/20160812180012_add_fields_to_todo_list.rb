class AddFieldsToTodoList < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :user_create, :string
  end
end
