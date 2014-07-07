require 'open-uri'

class LoadsBigCartelProducts
  def initialize(store_name)
    @client     = BigCartel::Client.new
    @store_name = store_name
  end

  def load!
    products_from_store.each do |product_from_store|
      existing_product = Product.find_by(url: product_from_store.url)
      thumbnail = product_from_store.images.first.url

      if existing_product.present?
        ensure_thumbnail_exists!(existing_product, fallback: thumbnail)
      else
        Product.create!(url: product_from_store.url, thumbnail: thumbnail)
      end
    end
  end

  private

  def products_from_store
    @products ||= @client.products(@store_name)
  end

  def ensure_thumbnail_exists!(product, fallback: nil)
    open(product.thumbnail)
  rescue OpenURI::HTTPError
    product.update!(thumbnail: fallback)
  end
end
