class Visual < ActiveRecord::Base
  belongs_to :source, touch: true

  delegate :name, to: :source, prefix: true, allow_nil: true

  scope :original, ->{ where(source_id: nil) }
  scope :imported, ->{ where.not(source_id: nil) }
end
