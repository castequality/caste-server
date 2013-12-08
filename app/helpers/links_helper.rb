module LinksHelper
  def link_for(name)
    "#{name}-link"
  end

  def instagram_link_to(**opts)
    opts[:class]  ||= "instagram-link"
    opts[:target] ||= "_blank"

    instagram = ReadsInstagram.new

    link_to instagram.url, opts do
      content_tag :p, t("loading.instagram"), class: "background-text"
      image_tag instagram.newest
    end
  end
end
