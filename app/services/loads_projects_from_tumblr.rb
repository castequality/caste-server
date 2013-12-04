require 'nokogiri'

class LoadsProjectsFromTumblr
  def initialize(blog_name)
    @loader = LoadsAllPosts.new(blog_name)
  end

  def load!
    @loader.load!(type: :photo) do |post|
      if Project.find_by(published_at: post["date"]).nil?
        project = Project.create \
          name: post["date"],
          featured: true,
          published_at: post["date"]
        
        project.photos.each_with_index do |photo, index|
          create_photo project, photo, index
        end

        create_video project, post["caption"], project.photos.count + 1
      end
    end
  end

  private
    def create_photo(project, photo, index)
      Photo.create \
          ordinal: index,
          caption: photo["caption"],
          url: photo["alt_sizes"].first.url,
          contentable: project
    end

    def create_video(project, content, ordinal)
      url = Nokogiri::HTML(project["caption"]).css("iframe").first["src"]
      project.build_video(
        Video.create \
          url: url,
          contentable: project,
          ordinal: ordinal
      ).save!
    end
end
