class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :icon
      t.text :description
      t.boolean :public

      t.timestamps
    end
  end
end
