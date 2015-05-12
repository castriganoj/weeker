class Goal < ActiveRecord::Base
    attr_accessible :title, :description, :completed
  
    validates :title, presence: true
end
