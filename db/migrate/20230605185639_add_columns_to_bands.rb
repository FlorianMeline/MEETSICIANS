class AddColumnsToBands < ActiveRecord::Migration[7.0]
  def change
    add_column :bands, :need, :string
  end
end
