NullObject = Naught.build do |config|
  config.define_explicit_conversions
  config.define_implicit_conversions

  def present?
    false
  end

  def blank?
    true
  end

  def nil?
    true
  end
end