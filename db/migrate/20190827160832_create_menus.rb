class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :key
      t.string :url
      t.string :place
      t.integer :ranking
      t.references :cm, foreign_key: true

      t.timestamps
    end
  end
end
