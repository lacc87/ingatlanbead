class Property < ApplicationRecord
  has_many :property_type_connections
  has_many :property_types, through: :property_type_connections
end
