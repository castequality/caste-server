class FeaturesController < InheritedResources::Base
  def index
    if featured.present?
      super
    else
      redirect_to posts_path
    end
  end

  def featured
    @featured ||= Feature.featured
  end
  helper_method :featured
end
