RSpec::Matchers.define :have_link_for_project do |project|
  match do |page|
    selector = "a[href='#{project_path(project)}']"
    numeral = RomanNumerals.to_roman(project.id)

    page.find(selector).text == numeral
  end
end
