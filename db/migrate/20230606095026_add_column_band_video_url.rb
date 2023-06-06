class AddColumnBandVideoUrl < ActiveRecord::Migration[7.0]
  def change
    add_column :bands, :video_url, :string
  end
end
