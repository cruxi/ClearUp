class Project < ActiveRecord::Base
  attr_accessible :creator, :deadline, :description, :name
end
