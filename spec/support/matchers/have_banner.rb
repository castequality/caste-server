RSpec::Matchers.define :have_banner do |banner|
  match do |page|
    node = page.all("#banner").first

    node.present? &&
    node['href'] == path_for(banner.resource) &&
    node.all('img').first['src'] == banner.image_url &&
    node.all('img').last['src'] == banner.hover_image_url
  end
end
