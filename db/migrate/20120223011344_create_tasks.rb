class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :deadline
      t.string :notes
      t.integer :quadrant_id
      t.integer :user_id
      t.timestamps
    end
  end
end
