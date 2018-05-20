class CreateInformation < ActiveRecord::Migration[5.0]
  def change
    create_table :information do |t|
      t.references :tripost, foreign_key: true
      t.string :time
      t.string :place
      t.string :place_comment
      t.string :place_time
      t.string :move_by
      t.string :move_start
      t.string :move_goal
      t.string :move_time

      t.timestamps
    end
  end
end
