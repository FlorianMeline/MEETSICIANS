class AddViewToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :view, :boolean, default: false
  end
end
