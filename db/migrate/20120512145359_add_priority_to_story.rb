class AddPriorityToStory < ActiveRecord::Migration
  def change
    add_column :stories, :priority, :integer
  end
end
