RSpec::Matchers.define :have_post do |post|
  match do |page|
    id = "##{dom_id(post)}"
    node = page.all(id).first

    node.present? &&
    node.find('.title').text == post.title &&
    node.find('.body').text == post.body &&
    node.find('.published-at').text == l(post.published_at, format: :post)
  end

  failure_message_for_should do |page|
    %Q{expected page to have post:

        #{post.inspect}
      
      but was not found in:

        #{page.body.squish}
    }
  end
end