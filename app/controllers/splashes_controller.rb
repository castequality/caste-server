class SplashesController < InheritedResources::Base
  layout 'splash'

  def index
    if featured.present?
      redirect_to featured
    else
      redirect_to posts_path
    end
  end

  def featured
    @featured ||= Splash.featured
  end
end
