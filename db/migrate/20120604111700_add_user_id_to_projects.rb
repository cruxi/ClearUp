class AddUserIdToProjects < ActiveRecord::Migration

 	def self.up
	 # add_column "projects", "user_id", :integer
	  #optional, but it could help depending on your site
	  #add_index "projects", "user_id"
	end

	def self.down
	end
end
