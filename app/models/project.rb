class Project < ActiveRecord::Base
  include Featureable

  Null = Naught.build do |config|
    config.black_hole
    config.mimic Project
  end

  has_many :photos, ->{ order('ordinal ASC') }, as: :imageable

  def with_photos(&block)
    photos.each(&block)
  end

  def numeral
    RomanNumerals.to_roman(id)
  end
end
