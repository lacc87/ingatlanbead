class Menu < ApplicationRecord

  belongs_to :cm

  def as_json(options = {})
    {
        id: id,
        key: key,
        url: url,
        place: place,
        cms_id: cm ? cm.id : 0
    }
  end

end
