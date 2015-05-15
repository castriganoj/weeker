class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.datetime :name

      t.timestamps
    end
  end
end
