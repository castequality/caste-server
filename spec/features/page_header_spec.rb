require "spec_helper"

feature "The page header" do
  scenario "has the banner for the most recent project" do
    project = create :project

    visit posts_path

    expect(page).to have_banner_for project
  end

  scenario "contains the home logo link to the posts path" do
    find("#home-link").click

    expect(current_path).to eq posts_path
  end

  scenario "contains the store link to the online store" do
    find("#store-link").click

    expect(current_url).to eq "store.#{ENV['HOST']}"
  end

  %w[projects visuals contact].each do |pages|
    scenario "contains the #{pages} link to the online #{pages}" do
      find("##{pages}-link").click

      expect(current_url).to eq __send__("#{pages}_path")
    end
  end
end
