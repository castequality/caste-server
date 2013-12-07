class Splash < ActiveRecord::Base
  include Publishable

  def self.featured
    find_by(featured: true)
  end

  def identifier
    "%02d" % id
  end
end