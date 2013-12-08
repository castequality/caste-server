class SplashesController < InheritedResources::Base
  layout 'splash'

  def index
    if featured.id
      super
    else
      redirect_to posts_path
    end
  end

  def featured
    @featured ||= Splash.featured
  end
  helper_method :featured
end
