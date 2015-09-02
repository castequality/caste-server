class LookbooksController < StaticController
  def index
    @lookbooks = build_lookbooks

    render json: { lookbooks: @lookbooks }
  end

  def build_lookbooks
    [{
      id: "indigo",
      pages: [
        { url: vimeo_url(138048069), video: true },
        { url: image_url("lookbooks/indigo/1.jpg") },
        { url: image_url("lookbooks/indigo/2.jpg") },
        { url: image_url("lookbooks/indigo/3.jpg") },
        { url: image_url("lookbooks/indigo/4.jpg") },
        { url: image_url("lookbooks/indigo/5.jpg") },
      ]
    }]
  end
end
