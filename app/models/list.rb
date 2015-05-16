class List < ActiveRecord::Base

	attr_accessible :name
		
	has_many :goals, dependent: :destroy

end
