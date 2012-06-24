class AddProjectIdToSprints < ActiveRecord::Migration
  def self.up
	  add_column "sprints", "project_id", :integer
	  #optional, but it could help depending on your site
	  add_index "sprints", "project_id"
	end

	def self.down
	end
end
