RSpec::Matchers.define :have_banner_for do |project|
  match do |page|
    banner = page.all("#banner").first

    banner.present? &&
    banner['href'] == project_path(project, video: true) &&
    banner.find('.project-banner')['src'] == project.banner &&
    banner.find('.project-banner-hover')['src'] == project.banner_hover
  end

  failure_message_for_should do |page|
    %Q{expected page to have banner for:

        #{project.inspect}

      but was not found in:

        #{page.body.squish}
    }
  end
end