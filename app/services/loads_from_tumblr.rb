class LoadsFromTumblr
  def initialize(blog_name)
    @blog_name = blog_name
  end

  def load!
    for_all_posts do |post|
      if Post.find_by(title: post[:title]).nil?
        Post.create({
          title: post[:title],
          body: post[:body],
          created_at: post[:date],
          published_at: post[:state] == "published" ? post[:date] : nil
        })
      end
    end
  end

  private
    def for_all_posts(&block)
      loaded = 0
      while(blog = client.posts(url, type: :text, limit: 20, offset: loaded) and
            loaded < blog["total_posts"])
        blog["posts"].each do |post|
          yield post.with_indifferent_access
        end
        loaded = loaded + 1
      end
    end

    def response
      client.posts(url, type: :text, limit: 20)
    end

    def url
      "#{@blog_name}.tumblr.com"
    end

    def client
      Tumblr::Client.new
    end
end
