class Column < ActiveRecord::Base
  attr_accessible :position, :title, :board_id

  has_many :stories
  belongs_to :board, :foreign_key => "board_id"
end
