class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :description
      t.text :detail

      t.timestamps
    end
  end
end