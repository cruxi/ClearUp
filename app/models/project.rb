class Project < ActiveRecord::Base
  attr_accessible :deadline, :description, :title, :user_id

  has_many :sprints
  has_many :boards

  belongs_to :user, :foreign_key => "user_id"


end
