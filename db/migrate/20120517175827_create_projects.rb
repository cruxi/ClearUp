class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.User :creator
      t.date :deadline
      t.text :description

      t.timestamps
    end
  end
end
