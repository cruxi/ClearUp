class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :weight
      t.text :description

      t.timestamps
    end
  end
end
