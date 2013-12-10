RSpec::Matchers.define :have_banner do |banner|
  match do |page|
    node = page.all("#banner").first

    node.present? &&
    node['href'] == path_for(banner.resource) &&
    node.find('.banner')['src'] == banner.image_url &&
    node.find('.banner-hover')['src'] == banner.hover_image_url
  end
end