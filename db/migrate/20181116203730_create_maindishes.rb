class CreateMaindishes < ActiveRecord::Migration[5.2]
  def change
    create_table :maindishes do |t|
      t.string :name
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
