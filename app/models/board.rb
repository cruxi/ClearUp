class Board < ActiveRecord::Base
  attr_accessible :title, :project_id

  has_many :columns
  has_many :stories
  belongs_to :project, :foreign_key => "project_id"

end
