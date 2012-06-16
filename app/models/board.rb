class Board < ActiveRecord::Base
  attr_accessible :title, :project_id

  has_many :columns
  belongs_to :project, :foreign_key => "project_id"

end
