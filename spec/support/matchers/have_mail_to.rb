RSpec::Matchers.define :have_mail_to do |selector, email: email|
  match do |page|
    page.find(selector)['href'] == "mailto:#{email}"
  end
end