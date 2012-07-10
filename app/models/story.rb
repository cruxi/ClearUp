class Story < ActiveRecord::Base
  attr_accessible :description, :priority, :title, :board_id

  has_many :tasks, :dependent => :destroy

  belongs_to :board, :foreign_key => "board_id"

end
