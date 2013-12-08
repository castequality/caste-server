class Product < ActiveRecord::Base
  def self.random
    first(order: "RANDOM()") || OpenStruct.new
  end
end
