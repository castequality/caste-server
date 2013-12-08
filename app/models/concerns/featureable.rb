module Featureable
  extend ActiveSupport::Concern

  include Publishable

  included do
    def self.featured
      published.find_by(featured: true) || OpenStruct.new
    end
  end
end
