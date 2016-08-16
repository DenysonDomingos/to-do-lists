class CreateTodoSubitems < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_subitems do |t|
      t.string :content
      t.references :todo_item, foreign_key: true

      t.timestamps
    end
  end
end
