class UserMeta < ApplicationRecord
    belongs_to :user
    validates :user, presence: true

    def as_json(options = {})
        {
            id: id,
            key: key,
            value: value
        }
    end
end
