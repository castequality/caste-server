class Feature < ActiveRecord::Base
  default_scope { order('id desc') }

  def self.featured
    find_by(featured: true)
  end
end