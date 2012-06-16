class Task < ActiveRecord::Base
  attr_accessible :description, :title, :weight, :story_id

  belongs_to :story, :foreign_key => "story_id"
end
