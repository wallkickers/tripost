class AdddestinationTotriposts < ActiveRecord::Migration[5.0]
  def change
    add_reference :triposts, :destination, foreign_key: { to_table: :categories }
  end
end
