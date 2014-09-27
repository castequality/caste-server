class Project < ActiveRecord::Base
  include Featureable

  has_many :photos, ->{ order('ordinal ASC') }, as: :imageable

  def numeral
    RomanNumerals.to_roman(id)
  end
end
