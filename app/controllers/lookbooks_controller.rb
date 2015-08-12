class LookbooksController < StaticController
  def index
    @lookbooks = build_lookbooks

    render json: { lookbooks: @lookbooks }
  end

  def build_lookbooks
    [{
      id: "fall2014",
      pages: [
        { url: image_url("lookbooks/traffic/1.jpg") },
        { url: image_url("lookbooks/traffic/2.jpg") },
        { url: image_url("lookbooks/traffic/3.jpg") },
        { url: image_url("lookbooks/traffic/4.jpg") },
        { url: image_url("lookbooks/traffic/5.jpg") },
        { url: image_url("lookbooks/traffic/6.jpg") },
      ]
    }]
  end
end
