module ApplicationHelper
  def store_url
    "//store.#{ENV['HOST'] || 'castequality.com'}"
  end

  def featured_project_path
    project_path(featured_project, video: true)
  end

  def header_link_to(route, link_path = nil)
    link_text = t("header.links.#{route}")
    link_path ||= __send__("#{route}_path")

    link_to link_text, link_path, id: "#{route}-link", class: "page-link"
  end

  def photo_tags_for(photos = [], **opts)
    if photos.present? && block_given?
      with_output_buffer do
        photos.each do |photo|
          yield photo
        end
      end
    end
  end

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
