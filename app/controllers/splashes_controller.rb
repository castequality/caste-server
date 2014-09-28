class SplashesController < ApplicationController
  def index
    @splashes = Splash.all

    render json: @splashes, serializer: CachedCollectionSerializer
  end
end
