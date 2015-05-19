class ChangeListDatetime2Integer < ActiveRecord::Migration
	def self.up
		change_column :lists, :name,  :integer
	end

	def self.down
		change_column :lists, :name,  :datetime
	end
end
