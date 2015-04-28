class FixTableName < ActiveRecord::Migration
  def self.up
    rename_table :weekly_goals, :goals
  end
  
  def self.down
    rename_table :goals, :weekly_goals
  end
end
