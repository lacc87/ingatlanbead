class User < ApplicationRecord
    has_secure_password
    has_many :user_metas, inverse_of: :user, dependent: :destroy

    attr_accessor :params_items

    after_commit :save_user_metas, on: [:update, :create]

    def as_json(options = {})
        {
          id: id,
          name: name,
          email: email,
          user_metas: user_metas,
          type: type
        }
    end

    def save_user_metas
        params_items.each do |meta|
            @meta = UserMeta.where(user_id: id, key: meta[:key]).limit(1)
            if @meta.first
                @meta.update(value: meta[:value])
            else
                @meta = UserMeta.new(user_id: id, key: meta[:key], value: meta[:value])
                @meta.save!
            end
        end
    end
end
