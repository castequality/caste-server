class StaticController < ApplicationController

  protected

  def image_url(name)
    URI.join(
      root_url,
      self.class.helpers.asset_url(name),
    ).to_s
  end

  def vimeo_url(id)
    "http://player.vimeo.com/video/#{id}?title=0&amp;byline=0&amp;portrait=0&amp;color=cfcfcf%22%20width=%22888"
  end
end
