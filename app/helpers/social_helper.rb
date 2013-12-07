module SocialHelper
  include ActionView::Helpers::AssetTagHelper

  def social_url(social_name)
    t("social.urls.#{social_name}")
  end

  def social_image_name(social_name)
    "social/#{social_name}.png"
  end

  def social_link_to(social_name, **opts)
    link_to social_url(social_name), id: link_for(social_name), class: "social-link" do
      image_tag social_image_name(social_name), opts
    end
  end
end
