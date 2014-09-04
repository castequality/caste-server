class Splash < ActiveRecord::Base
  include Featureable

  def vimeo_id=(vimeo_id)
    self.video_url ||=
      "//player.vimeo.com/video/#{vimeo_id.to_s}?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff"
  end

  def vimeo_id
    vimeo_url = video_url.to_s
    id = %r{//player.vimeo.com/video/(\d+)\?}.match(vimeo_url)

    id.present? ? id[1] : nil
  end

  def name
    super.presence || "installment #{identifier}"
  end

  def identifier
    "%02d" % id.to_i
  end
end
