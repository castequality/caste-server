class VideosController < StaticController
  def index
    @videos = find_videos

    render json: { videos: @videos }
  end

  private

  def find_videos
    [{
      id: 6,
      url: vimeo_url(109002548),
    },
    {
      id: 5,
      url: vimeo_url(99653555),
    },
    {
      id: 4,
      url: vimeo_url(84338572),
    },
    {
      id: 3,
      url: vimeo_url(83601495),
    },
    {
      id: 2,
      url: vimeo_url(81305762),
    },
    {
      id: 1,
      url: vimeo_url(73152136),
    }]
  end
end
