RSpec::Matchers.define :have_video_post do |post|
  include ActionView::RecordIdentifier

  match do |page|
    id = "##{dom_id(post)}"
    node = page.all(id).first

    expect(page).to(have_post(post)) &&
    node.present? &&
    post.videos.present? &&
    post.videos.all?{|video|
      node.all(".video[src='#{video.url}']").present?
    }
  end

  failure_message_for_should do |page|
    %Q{expected page to have post with videos:

        #{post.videos.map(&:url).join("\n")}
      
      but was not found in:

        #{page.body.squish}
    }
  end
end