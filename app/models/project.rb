class Project < ActiveRecord::Base
  include Featureable

  has_one :banner, as: :resource
  has_many :photos, ->{ order(:ordinal) }, as: :imageable

  def numeral
    RomanNumerals.to_roman(id)
  end
end
