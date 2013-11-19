module ApplicationHelper
  def video_tags_for(videos = [], **opts)
    if videos.present? && block_given?
      videos.each do |video|
        yield video
      end
    end
  end
end
