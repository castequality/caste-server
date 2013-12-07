class LoadsProjectsFromTumblr
  URL_MATCHER = /src=\"(.+)\"/i

  def initialize(blog_name)
    @loader = LoadsAllPosts.new(blog_name)
  end

  def load!
    @loader.load!(type: :photo) do |post|
      if Project.find_by(published_at: post["date"]).nil?
        project = Project.create \
          featured: true,
          video_url: video_url(post),
          name: post["date"],
          published_at: post["date"],
          banner: "",
          banner_hover: ""

        post["photos"].each_with_index do |photo, index|
          create_photo project, photo, index
        end
      end
    end
  end

  private
    def create_photo(project, photo, index)
      Photo.create \
          ordinal: index,
          caption: photo["caption"],
          url: photo["alt_sizes"][0]["url"],
          thumbnail: photo["alt_sizes"][2]["url"],
          imageable: project
    end

    def video_url(post)
      URL_MATCHER.match(post["caption"])[1]
    end
end
