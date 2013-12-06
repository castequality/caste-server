RSpec::Matchers.define :have_post do |post|
  match do |page|
    node = page.all("##{dom_id(post)}").first

    published_at = l(post.published_at, format: :post)

    node.present? &&
    node.find('.name').text == [post.name, published_at].join &&
    node.find('.body').text == post.body
  end

  failure_message_for_should do |page|
    %Q{expected page to have post:

        #{post.inspect}

      but was not found in:

        #{page.body.squish}
    }
  end
end