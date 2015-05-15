class AddListReferenceGoal < ActiveRecord::Migration
  def change
			change_table :goals do |t|
      t.references :list
    end
  end
end
