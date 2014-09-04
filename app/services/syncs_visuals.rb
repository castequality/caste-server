class SyncsVisuals
  def self.sync!(*args)
    new(*args).sync!
  end

  def initialize(sources = Source.all)
    @sources = sources
  end

  def sync!
    for_each_source do |source, visual|
      tumblr_id = visual["id"].to_s
      photo = visual["photos"].first || {}
      sizes = photo["alt_sizes"]
      large = sizes.first["url"]
      thumbnail = sizes[2]["url"]

      record = source.visuals.find_or_initialize_by(
        tumblr_id: tumblr_id,
        photo: large,
        thumbnail: thumbnail,
      )

      record.update!(
        caption: photo["caption"],
        published_at: visual[:date]
      ) if record.new_record?
    end
  end

  private

    def for_each_source(&block)
      @sources.each do |source|
        loader = LoadsAllPosts.new(source.name)
        loader.load!(type: :photo) do |visual_from_source|
          yield source, visual_from_source if block_given?
        end
      end
    end
end
