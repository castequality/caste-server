class SyncsVisuals
  def initialize(sources = Source.all)
    @sources = sources
  end

  def sync!
    for_each_source do |source, visual|
      photo = visual["photos"].first || {}
      url = (photo["alt_sizes"].first || {})["url"]

      unless Visual.find_by(url: url).present?
        Visual.create({
          source: source,
          caption: photo["caption"],
          url: url
        })
      end
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
