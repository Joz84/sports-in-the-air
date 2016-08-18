class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :required_level
      t.boolean :required_material
      t.text :description
      t.integer :number_of_players
      t.string :status
      t.date :date
      t.time :time
      t.city :string
      t.address :string
      t.references :user, foreign_key: true
      # t.references :place, foreign_key: true
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end
