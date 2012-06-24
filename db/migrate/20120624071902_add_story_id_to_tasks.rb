class AddStoryIdToTasks < ActiveRecord::Migration
  def self.up
	  add_column "tasks", "story_id", :integer
	  #optional, but it could help depending on your site
	  add_index "tasks", "story_id"
	end

	def self.down
	end
end
