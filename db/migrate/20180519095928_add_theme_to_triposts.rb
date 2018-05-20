class AddThemeToTriposts < ActiveRecord::Migration[5.0]
  def change
    add_reference :triposts, :theme, foreign_key: { to_table: :categories }
  end
end
