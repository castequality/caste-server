RSpec::Matchers.define :have_photo do |photo|
  match do |page|
    page.all(".photo[src='#{photo.url}']").present?
  end
end
