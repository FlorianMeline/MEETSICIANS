class AddColumnVideoUrlToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :video_url, :string
  end
end
