class Project < ActiveRecord::Base
  attr_accessible :deadline, :description, :title

  belongs_to :user


end
