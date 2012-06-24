class Column < ActiveRecord::Base
  attr_accessible :position, :title, :board_id

  has_many :tasks
  belongs_to :board, :foreign_key => "board_id"
end
