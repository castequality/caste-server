class SplashesController < ApplicationController
  def index
    @splashes = Splash.all

    render json: @splashes
  end
end
