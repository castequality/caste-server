RSpec::Matchers.define :have_project do |project|
  match do |page|
    page.extend ProjectMatchers

    page.has_project?(project) &&
    page.has_photos?(project.photos) &&
    page.has_video?(project.video_url)
  end

  module ProjectMatchers
    include ActionView::RecordIdentifier

    def has_project?(project)
      node_for(project).present?
    end

    def has_photos?(photos)
      photos.all? do |photo|
        photo_node = node_for(photo)
        photo_node.present? && photo_node["src"] == photo.url
      end
    end

    def has_video?(video_url)
      video_node = all(".video").first

      video_node.present? && video_node["src"] == video_url
    end

    private

      def node_for(object)
        all("##{dom_id(object)}").first
      end
  end
end