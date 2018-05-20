class AddmoneyTotriposts < ActiveRecord::Migration[5.0]
  def change
    add_reference :triposts, :money, foreign_key: { to_table: :categories }
  end
end
