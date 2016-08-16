class CreateFavoriteSports < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_sports do |t|
      t.integer :level
      t.boolean :material
      t.references :user, foreign_key: true
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end
