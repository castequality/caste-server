class LoadsAllPosts
  def initialize(blog_name)
    @blog_name = blog_name
  end

  def load!(type: :text, &block)
    loaded = 0
    while(blog = posts_after(loaded, type: type) and
          total = blog["total_posts"] and loaded < total)
      blog["posts"].each do |post|
        yield post.with_indifferent_access if block_given?
        loaded = loaded + 1
      end
    end
  end

  private
    def posts_after(offset = 0, type: :text)
      client.posts(url, type: type, limit: 20, offset: offset)
    end

    def url
      "#{@blog_name}.tumblr.com"
    end

    def client
      Tumblr::Client.new
    end
end
