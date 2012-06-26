class AddBoardIdToStory < ActiveRecord::Migration
  def self.up
	  add_column "stories", "board_id", :integer
	  #optional, but it could help depending on your site
	  add_index "stories", "board_id"
	end

	def self.down
	end
end
