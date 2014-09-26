module ApplicationHelper
  def preload_env
    {
      "ASSETS" => asset_hash,
    }
  end

  def asset_hash
    {
      banner: image_url("banners/walt.png"),
      brain: image_url("brain.png"),
      logo: image_url("header_logo.png"),
      social_vimeo: image_url("social/vimeo.png"),
      social_youtube: image_url("social/youtube.png"),
      social_twitter: image_url("social/twitter.png"),
      social_facebook: image_url("social/facebook.png"),
    }
  end
end
