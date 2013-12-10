class Product < ActiveRecord::Base
  include Randomizable

  def store_url
    ["//store.castequality.com", url].join
  end
end
