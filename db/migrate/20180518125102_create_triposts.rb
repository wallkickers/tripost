class CreateTriposts < ActiveRecord::Migration[5.0]
  def change
    create_table :triposts do |t|
      t.references :user, foreign_key: true
      t.string :image
      t.string :title

      t.timestamps
    end
  end
end
