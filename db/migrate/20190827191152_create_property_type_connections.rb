class CreatePropertyTypeConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :property_type_connections do |t|
      t.references :properties, foreign_key: true
      t.references :property_types, foreign_key: true
    end
  end
end
