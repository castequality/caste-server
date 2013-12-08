require 'i18n'

class ReadsBigCartel
  def initialize(client = BigCartel::Client.new, store = "castequality")
    @client   = client
    @store    = store
    @base_url = "//store.castequality.com"
  end

  def random_product
    full_url  = [@base_url, random.url].join

    thumbnail = random.images.first.url

    OpenStruct.new(url: full_url, thumbnail: thumbnail)
  end

  private
    def random
      @random ||= products.sample
    end

    def products
      @client.products(@store)
    end
end
