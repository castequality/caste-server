class LoadsBigCartelProducts
  def initialize(store_name)
    @client     = BigCartel::Client.new
    @store_name = store_name
  end

  def load!
    @client.products(@store_name).each do |product|
      unless Product.find_by(url: product.url).present?
        Product.create! \
          url: product.url,
          thumbnail: product.images.first.url
      end
    end
  end
end
