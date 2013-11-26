RSpec::Matchers.define :have_visual do |visual|
  match do |page|
    node = page.all(".visual").first
 
    source_class = ["visual", visual.source_name].reject(&:nil?).join("-")

    node.present? &&
      ([source_class] - node["class"].split(' ')).empty? &&
      image = node.all("img[src='#{visual.thumbnail}']").first.present?
  end
end
