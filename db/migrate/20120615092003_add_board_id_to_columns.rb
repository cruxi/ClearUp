class AddBoardIdToColumns < ActiveRecord::Migration
	def self.up
	  add_column "columns", "board_id", :integer
	  #optional, but it could help depending on your site
	  add_index "columns", "board_id"
	end

	def self.down
	end
end
