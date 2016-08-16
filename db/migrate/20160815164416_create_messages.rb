class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :event, foreign_key: true
      t.references :participation, foreign_key: true

      t.timestamps
    end
  end
end
