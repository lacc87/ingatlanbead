class PropertyTypeConnection < ApplicationRecord
  belongs_to :property
  belongs_to :property_type
end