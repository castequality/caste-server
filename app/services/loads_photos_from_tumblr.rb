class LoadsPhotosFromTumblr
  def initialize(blog_name)
    @loader = LoadsAllPosts.new(blog_name)
  end

  def load!
    @loader.load!(type: :photo) do |photo_from_blog|
      photo     = photo_from_blog["photos"].first || {}
      sizes     = photo["alt_sizes"]
      url       = sizes[0]["url"]
      thumbnail = sizes[2]["url"]

      unless Photo.find_by(url: url).present?
        Photo.create \
          url: url,
          thumbnail: thumbnail,
          caption: photo["caption"]
      end
    end
  end
end
