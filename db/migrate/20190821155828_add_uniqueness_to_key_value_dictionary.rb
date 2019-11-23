class AddUniquenessToKeyValueDictionary < ActiveRecord::Migration[5.2]
  def change
    add_index :dictionaries, [:key, :language], unique: true
  end
end
