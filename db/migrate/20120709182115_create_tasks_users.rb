class CreateTasksUsers < ActiveRecord::Migration
  def change
    create_table :tasks_users, :id => false do |t|
      t.references :tasks
      t.references :users

      t.timestamps
    end
    add_index :tasks_users, :tasks_id
    add_index :tasks_users, :users_id
  end
end
