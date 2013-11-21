require "spec_helper"

feature "The page header" do
  scenario "has the banner for the most recent project" do
    project = create :featured_project

    visit posts_path

    expect(page).to have_banner_for project
  end

  scenario "contains the home logo link to the posts path" do
    visit posts_path

    find("#home-link").click

    expect(current_path).to eq posts_path
  end

  scenario "contains the store link to the online store" do
    visit posts_path

    expect(find("#store-link")).to match_store_link
  end

  %w[projects visuals contact].each do |page|
    scenario "contains the #{page} link to the #{page} page" do
      visit posts_path

      find("##{page}-link").click

      expect(current_path).to eq __send__("#{page}_path")
    end
  end
end
