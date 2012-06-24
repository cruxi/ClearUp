class Task < ActiveRecord::Base
  attr_accessible :description, :title, :weight, :story_id, :column_id

  belongs_to :story, :foreign_key => "story_id"
  belongs_to :column, :foreign_key => "column_id"
end
