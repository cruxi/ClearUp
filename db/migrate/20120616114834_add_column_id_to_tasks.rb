class AddColumnIdToTasks < ActiveRecord::Migration
   def self.up
	  add_column "tasks", "column_id", :integer
	  #optional, but it could help depending on your site
	  add_index "tasks", "column_id"
	end

	def self.down
	end
end
