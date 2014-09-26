class Photo < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true, touch: true

  scope :orphaned, ->{ where(imageable_id: nil) }

  def caption
    super.to_s
  end
end
