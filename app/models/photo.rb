class Photo < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true, touch: true

  def self.orphaned
    where(imageable_id: nil)
  end
end
