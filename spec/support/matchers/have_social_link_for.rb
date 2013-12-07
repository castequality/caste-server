RSpec::Matchers.define :have_social_link_for do |social_name|
  include SocialHelper

  match do |page|
    link = find_link_for(social_name)

    expect(link['href']).to eq social_url(social_name)
    expect(link.find('img')['src']).to end_with(social_image_name(social_name))
  end
end