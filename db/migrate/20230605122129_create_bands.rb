class CreateBands < ActiveRecord::Migration[7.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.text :bio
      t.string :city
      t.references :style, null: false, foreign_key: true

      t.timestamps
    end
  end
end
