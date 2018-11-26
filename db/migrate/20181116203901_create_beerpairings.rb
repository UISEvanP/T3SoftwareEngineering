class CreateBeerpairings < ActiveRecord::Migration[5.2]
  def change
    create_table :beerpairings do |t|
      t.integer :weight
      t.references :maindish, foreign_key: true
      t.references :beer, foreign_key: true

      t.timestamps
    end
  end
end
