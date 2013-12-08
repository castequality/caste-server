class Splash < ActiveRecord::Base
  include Featureable

  def identifier
    "%02d" % id
  end
end