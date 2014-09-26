class Splash < ActiveRecord::Base
  include Featureable

  def name
    super.presence || "installment #{identifier}"
  end

  def identifier
    "%02d" % id.to_i
  end
end
