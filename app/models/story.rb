class Story < ActiveRecord::Base
  attr_accessible :description, :priority, :title, :column_id

  has_many :tasks

  belongs_to :board, :foreign_key => "board_id"

end
