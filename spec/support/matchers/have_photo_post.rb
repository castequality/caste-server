RSpec::Matchers.define :have_photo_post do |post|
  include ActionView::RecordIdentifier

  match do |page|
    id = "##{dom_id(post)}"
    node = page.all(id).first

    expect(page).to(have_post(post)) &&
    node.present? &&
    post.photos.present? &&
    post.photos.all?{|photo|
      node.all(".photo[src='#{photo.file.url(:medium)}']").present?
    }
  end

  failure_message_for_should do |page|
    %Q{expected page to have post with photos:

        #{post.photos.map(&:file).map{|p| p.url(:medium) }.join("\n")}
      
      but was not found in:

        #{page.body.squish}
    }
  end
end