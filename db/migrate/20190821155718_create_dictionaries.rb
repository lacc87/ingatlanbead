class CreateDictionaries < ActiveRecord::Migration[5.2]
  def change
    create_table :dictionaries do |t|
      t.string :key
      t.string :value
      t.string :language

      t.timestamps
    end
  end
end
