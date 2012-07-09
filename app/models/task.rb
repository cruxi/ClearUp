class Task < ActiveRecord::Base
  attr_accessible :description, :title, :weight, :story_id, :column_id, :board_id

  belongs_to :story, :foreign_key => "story_id"
  belongs_to :column, :foreign_key => "column_id"
  has_and_belongs_to_many :users

end
