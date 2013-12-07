RSpec::Matchers.define :have_splash do |splash|
  match do |page|
    node = page.all("#splash").first

    node.present? &&
    node['src'] == splash.video_url
  end

  failure_message_for_should do |page|
    %Q{expected page to have splash for:

        #{splash.inspect}

      but was not found in:

        #{page.body.squish}
    }
  end
end