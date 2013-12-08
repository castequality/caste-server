module LinksHelper
  def link_for(name)
    "#{name}-link"
  end

  def store_link_to(product, **opts)
    opts[:class]  ||= "store-link"
    opts[:target] ||= "_blank"

    full_url = ["//store.castequality.com", product.url].join

    render "store_link", url: full_url, thumbnail: product.thumbnail
  end

  def instagram_link_to(instagram, **opts)
    opts[:class]  ||= "instagram-link"
    opts[:target] ||= "_blank"

    render "instagram_link", url: instagram.url, thumbnail: instagram.thumbnail
  end
end
