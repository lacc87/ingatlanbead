class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.integer :price
      t.string :name
      t.integer :size
      t.integer :top
      t.string :ad_type

      t.timestamps
    end
  end
end
