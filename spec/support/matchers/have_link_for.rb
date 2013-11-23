RSpec::Matchers.define :have_link_for do |route|
  match do |page|
    link = link_for(route)

    expect(link.text).to eq t("header.links.#{route}")
    expect(link['href']).to eq __send__("#{route}_path")
  end
end