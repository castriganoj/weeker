class List < ActiveRecord::Base

	attr_accessible :name
	
	after_initialize :default_values
	
		
	has_many :goals, dependent: :destroy


    def default_values
	d = Date.today
	week_number = d.strftime("%U").to_i
	#first_day_week = d.at_beginning_of_week
	#last_day_week = d.at_end_of_week
     self.name ||= week_number
    end
=begin 
    def week_start_end
    	d = Date.today
    	bow = d.beginning_of_week()
    	eow = d.end_of_week()
    	week_range = '#{bow}' + '-' + '#{eow}'
	end
=end
    
    	
end
