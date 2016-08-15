class AddFavoriteToTodoLists < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :favorite, :boolean
    add_column :todo_lists, :user_mark_favorite, :string
  end
end
