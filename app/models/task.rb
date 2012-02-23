class Task < ActiveRecord::Base
  
  has_many :subtasks
  belongs_to :quadrant
  belongs_to :user
  
end
