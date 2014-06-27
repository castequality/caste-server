RSpec::Matchers.define :have_link_for do |route, url: nil|
  match do |page|
    link = find_link_for(route)
    link_url = url || __send__("#{route}_path")

    expect(link.text).to eq t("header.links.#{route}")
    expect(link['href']).to eq link_url
  end
end
