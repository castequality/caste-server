RSpec::Matchers.define :have_visual do |visual|
  match do |page|
    node = page.all(".visual.visual-#{visual.source}").first

    node.present? && image = node.all("img[src='#{visual.url}']").first.present?
  end
end
