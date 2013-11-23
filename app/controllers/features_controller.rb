class FeaturesController < InheritedResources::Base
  def featured
    @featured ||= Feature.featured
  end
  helper_method :featured
end
