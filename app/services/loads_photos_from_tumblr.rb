class LoadsPhotosFromTumblr
  def initialize(blog_name)
    @blog_name = blog_name
  end

  def load!
    LoadsAllPosts.new(@blog_name).load!(type: :photo) do |photo_from_blog|
      photo = photo_from_blog["photos"].first || {}
      sizes = photo["alt_sizes"]
      large = sizes.first["url"]
      thumbnail = sizes[2]["url"]

      unless Visual.find_by(photo: large).present?
        Visual.create \
          caption: photo["caption"],
          photo: large,
          thumbnail: thumbnail
      end
    end
  end
end
