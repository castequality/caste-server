class VisualsController < ApplicationController
  def index
    @visuals = Visual.all

    render json: @visuals
  end
end
