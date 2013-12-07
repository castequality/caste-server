RSpec::Matchers.define :have_visual do |visual|
  match do |page|
    node = page.all("##{dom_id(visual)}").first

    node.present? &&
      node["class"].include?(visual.classes) &&
      image = node.all("img[src='#{visual.thumbnail}']").first.present?
  end
end
