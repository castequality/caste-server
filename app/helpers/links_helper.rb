module LinksHelper
  def link_for(name)
    "#{name}-link"
  end

  def store_link_to(**opts)
    opts[:class]  ||= "store-link"
    opts[:target] ||= "_blank"

    big_cartel = ReadsBigCartel.new

    product = big_cartel.random_product

    render "store_link", url: product.url, thumbnail: product.thumbnail
  end

  def instagram_link_to(**opts)
    opts[:class]  ||= "instagram-link"
    opts[:target] ||= "_blank"

    instagram = ReadsInstagram.new

    render "instagram_link", url: instagram.url, thumbnail: instagram.newest
  end
end
