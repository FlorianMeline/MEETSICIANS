class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :bio, :text
    add_reference :users, :band, foreign_key: true
    add_reference :users, :style, foreign_key: true
    add_reference :users, :instrument, foreign_key: true
  end
end
