module ApplicationHelper
  def video_tags_for(videos = [], **opts)
    if videos.present? && block_given?
      with_output_buffer do
        videos.each do |video|
          yield video
        end
      end
    end
  end
end
