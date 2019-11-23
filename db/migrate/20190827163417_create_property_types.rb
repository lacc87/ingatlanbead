class CreatePropertyTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :property_types do |t|
      t.string :name
      t.integer :ranking

      t.timestamps
    end
  end
end
