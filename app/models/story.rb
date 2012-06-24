class Story < ActiveRecord::Base
  attr_accessible :description, :priority, :title, :column_id

  has_many :tasks

  belongs_to :column, :foreign_key => "column_id"

end
