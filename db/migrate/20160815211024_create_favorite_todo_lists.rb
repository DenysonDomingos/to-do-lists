class CreateFavoriteTodoLists < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_todo_lists do |t|
      t.integer :todo_list_id
      t.integer :user_id

      t.timestamps
    end
  end
end
