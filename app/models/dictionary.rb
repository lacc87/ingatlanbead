class Dictionary < ApplicationRecord
  validates :key, uniqueness: { scope: :language }
end
