class LookbooksController < StaticController
  def index
    @lookbooks = build_lookbooks

    render json: { lookbooks: @lookbooks }
  end

  def build_lookbooks
    [{
      id: "aime-de-magenta",
      pages: [
        { url: vimeo_url(155997209), video: true },
      ]
    }]
  end
end
