class LookbooksController < ApplicationController
  def index
    @lookbooks = Lookbook.all

    render json: @lookbooks
  end
end
