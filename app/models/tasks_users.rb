class TasksUsers < ActiveRecord::Base
  belongs_to :tasks
  belongs_to :users
  # attr_accessible :title, :body
end
