class AddColumnIdToStories < ActiveRecord::Migration
   def self.up
	  add_column "stories", "column_id", :integer
	  #optional, but it could help depending on your site
	  add_index "stories", "column_id"
	end

	def self.down
	end
end
