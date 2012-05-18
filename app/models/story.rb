class Story < ActiveRecord::Base
  attr_accessible :description, :title, :priority
  
  def self.increase_priority
    curent_prio = :priority + 1
  end
  
end
