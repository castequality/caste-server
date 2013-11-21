class Feature < ActiveRecord::Base
  delegate :url, to: :video, prefix: true, allow_nil: true

  has_one :video, as: :videoable

  default_scope { order('id desc') }

  def self.featured
    find_by(featured: true)
  end
end