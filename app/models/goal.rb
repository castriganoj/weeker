class Goal < ActiveRecord::Base
    attr_accessible :title, :description, :completed
		after_initialize :default_values
  
    validates :title, presence: true

		belongs_to :list

private
    def default_values
      self.completed ||= false
    end
end
