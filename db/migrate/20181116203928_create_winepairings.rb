class CreateWinepairings < ActiveRecord::Migration[5.2]
  def change
    create_table :winepairings do |t|
      t.integer :weight
      t.references :maindish, foreign_key: true
      t.references :wine, foreign_key: true

      t.timestamps
    end
  end
end
