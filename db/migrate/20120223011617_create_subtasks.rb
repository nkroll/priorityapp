class CreateSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.string :name
      t.datetime :deadline
      t.string :notes
      t.integer :task_id

      t.timestamps
    end
  end
end
