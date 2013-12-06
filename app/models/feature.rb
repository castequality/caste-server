class Feature < ActiveRecord::Base
  include Publishable

  def self.featured
    find_by(featured: true)
  end
end