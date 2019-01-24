class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :project_id

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
