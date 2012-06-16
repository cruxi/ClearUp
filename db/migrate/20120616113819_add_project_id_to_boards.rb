class AddProjectIdToBoards < ActiveRecord::Migration
  def self.up
	  add_column "boards", "project_id", :integer
	  #optional, but it could help depending on your site
	  add_index "boards", "project_id"
	end

	def self.down
	end
end
