class Project < ActiveRecord::Base
  attr_accessible :deadline, :description, :title, :user_id

  belongs_to :user, :foreign_key => "user_id"


end
