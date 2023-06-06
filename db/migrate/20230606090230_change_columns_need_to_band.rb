class ChangeColumnsNeedToBand < ActiveRecord::Migration[7.0]
  def change
    add_references :bands, :need, foreign_key: { to_table: :instruments }
  end
end
