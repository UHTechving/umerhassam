class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :description
      t.integer :project_id

      t.timestamps
    end
    add_index :notes, :project_id
  end
end
