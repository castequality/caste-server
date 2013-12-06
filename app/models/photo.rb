class Photo < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  scope :orphaned, ->{ where(imageable_id: nil) }
end
