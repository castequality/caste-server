RSpec::Matchers.define :have_post do |post|
  include ActionView::RecordIdentifier

  match do |page|
    id = "##{dom_id(post)}"
    node = page.find(id)
    node.find('.title').value == post.title &&
    node.find('.body').value == post.body &&
    node.find('.published-at').value == post.published_at
  end

  failure_message_for_should do |page|
    %Q{expected page to have post:

        #{post.inspect}
      
      but was not found in:

        #{page.body.squish}
    }
  end
end