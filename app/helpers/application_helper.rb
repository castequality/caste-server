module ApplicationHelper
  def preload_env
    {
      "ASSETS" => asset_hash,
      "INSTAGRAM" => instagram_hash,
    }
  end

  def instagram_hash
    {
      client_id: ENV["INSTAGRAM_CLIENT_ID"],
      user: "259689659",
    }
  end

  def asset_hash
    {
      banner: image_url("banners/walt.png"),
      brain: image_url("brain.png"),
      brain_hi_res: image_url("brain_hi_res.png"),
      logo: image_url("header_logo.png"),
      script_logo: image_url("script_logo.png"),
      social: social_hash,
      lookbooks: lookbooks_hash,
    }
  end

  def lookbooks_hash
    {
      fall2014: 5.times.map { |i| image_url("lookbooks/fall2014/#{i + 1}.jpg") },
    }
  end

  def social_hash
    {
      vimeo: image_url("social/vimeo.png"),
      youtube: image_url("social/youtube.png"),
      twitter: image_url("social/twitter.png"),
      facebook: image_url("social/facebook.png"),
    }
  end
end
