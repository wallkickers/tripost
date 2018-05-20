class AddstatusTotriposts < ActiveRecord::Migration[5.0]
  def change
    add_reference :triposts, :status, foreign_key: { to_table: :categories }
  end
end
