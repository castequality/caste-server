RSpec::Matchers.define :have_photo do |photo|
  match do |page|
    page.all(".photo[src='#{photo.thumbnail}']").present?
  end
end
