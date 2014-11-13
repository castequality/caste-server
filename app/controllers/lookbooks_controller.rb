class LookbooksController < StaticController
  def index
    @lookbooks = build_lookbooks

    render json: { lookbooks: @lookbooks }
  end

  def build_lookbooks
    [{
      id: "fall2014",
      pages: [
        { url: image_url("lookbooks/fall2014/1.jpg") },
        { url: image_url("lookbooks/fall2014/2.jpg") },
        { url: image_url("lookbooks/fall2014/3.jpg") },
        { url: image_url("lookbooks/fall2014/4.jpg") },
        { url: image_url("lookbooks/fall2014/5.jpg") },
      ]
    }]
  end
end
