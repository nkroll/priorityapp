class CreateQuadrants < ActiveRecord::Migration
  def change
    create_table :quadrants do |t|
      t.string :quadname

      t.timestamps
    end
  end
end
