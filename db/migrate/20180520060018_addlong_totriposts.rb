class AddlongTotriposts < ActiveRecord::Migration[5.0]
  def change
    add_reference :triposts, :long, foreign_key: { to_table: :categories }
  end
end
