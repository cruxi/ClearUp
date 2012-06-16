class Sprint < ActiveRecord::Base
  attr_accessible :end_date, :start_date, :project_id

  belongs_to :project, :foreign_key => "project_id"

end
