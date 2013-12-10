module Randomizable
  extend ActiveSupport::Concern

  included do
    def self.random
      order("RANDOM()").first || OpenStruct.new
    end
  end
end
