class LoadsPostsFromTumblr
  def initialize(blog_name)
    @loader = LoadsAllPosts.new(blog_name)
  end

  def load!
    @loader.load!(type: :text) do |post|
      if Post.find_by(name: post[:title]).nil?
        Post.create \
          name: post[:title],
          body: post[:body],
          created_at: post[:date],
          published_at: post[:state] == "published" ? post[:date] : nil
      end
    end
  end
end
