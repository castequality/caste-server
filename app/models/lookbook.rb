Lookbook = Struct.new(:id, :pages) do
  extend ActionView::Helpers::AssetUrlHelper

  def self.all
    [{
      id: "fall2014",
      pages: [
        { url: asset_url("lookbooks/fall2014/1.jpg") },
        { url: asset_url("lookbooks/fall2014/2.jpg") },
        { url: asset_url("lookbooks/fall2014/3.jpg") },
        { url: asset_url("lookbooks/fall2014/4.jpg") },
        { url: asset_url("lookbooks/fall2014/5.jpg") },
      ]
    }]
  end
end
