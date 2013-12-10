module Featureable
  extend ActiveSupport::Concern

  include Publishable

  included do
    def self.featured
      published.find_by(featured: true)
    end
  end
end
