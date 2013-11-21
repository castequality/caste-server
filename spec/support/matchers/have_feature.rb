RSpec::Matchers.define :have_feature do |feature|
  match do |page|
    node = page.all("#feature").first

    node.present? &&
    node['src'] == feature.video_url
  end

  failure_message_for_should do |page|
    %Q{expected page to have feature for:

        #{feature.inspect}
      
      but was not found in:

        #{page.body.squish}
    }
  end
end