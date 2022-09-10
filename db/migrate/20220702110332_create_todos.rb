class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_items do |t|
      t.string :user_id
      t.string :tasks
      t.timestamps
    end
    end
end
