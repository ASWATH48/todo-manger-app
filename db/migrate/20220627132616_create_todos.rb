class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :task
      t.date :due_date
      t.boolean :completed

      t.timestamps
    end
  end
end
