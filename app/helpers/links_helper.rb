module LinksHelper
  def link_for(name)
    "#{name}-link"
  end

  def instagram_link_to(**opts)
    opts[:class]  ||= "instagram-link"
    opts[:target] ||= "_blank"

    instagram = ReadsInstagram.new

    render "instagram_link", url: instagram.url, newest: instagram.newest
  end
end
