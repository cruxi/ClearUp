class AddUserIdToUserSession < ActiveRecord::Migration
  def self.up
	  add_column "user_sessions", "user_id", :integer
	  #optional, but it could help depending on your site
	  add_index "user_sessions", "user_id"
	end

	def self.down
	end
end
