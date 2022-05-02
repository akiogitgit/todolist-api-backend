class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.string :content
      t.boolean :finished, default: false
      t.integer :importance, default: 1

      t.timestamps
    end
  end
end
