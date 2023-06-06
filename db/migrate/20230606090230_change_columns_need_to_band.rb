class ChangeColumnsNeedToBand < ActiveRecord::Migration[7.0]
  def change
    add_reference :bands, :needed_instrument, foreign_key: { to_table: :instruments }
  end
end
