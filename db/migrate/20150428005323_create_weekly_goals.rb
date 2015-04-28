class CreateWeeklyGoals < ActiveRecord::Migration
  def change
    create_table :weekly_goals do |t|
      t.string :title
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
