class LoadsPhotosFromTumblr
  def initialize(blog_name)
    @loader = LoadsAllPosts.new(@blog_name)
  end

  def load!
    @loader.load!(type: :photo) do |photo_from_blog|
      photo = photo_from_blog["photos"].first || {}
      sizes = photo["alt_sizes"]
      url = sizes.first["url"]

      unless Photo.find_by(url: url).present?
        Photo.create \
          url: url
          caption: photo["caption"],
      end
    end
  end
end
