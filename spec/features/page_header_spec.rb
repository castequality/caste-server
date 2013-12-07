require "spec_helper"

feature "The page header" do
  scenario "has the banner for the most recent project" do
    project = create :featured_project

    visit posts_path

    expect(page).to have_banner_for project
  end

  scenario "contains the home logo link to the posts path" do
    visit posts_path

    find_link_for(:home).click

    expect(current_path).to eq posts_path
  end

  scenario "contains the store link to the online store" do
    visit posts_path

    expect(find_link_for(:store)).to match_store_link
  end

  context "links" do
    include_context :page_for, :posts

    %w[projects visuals contact stockists].each do |route|
      it { should have_link_for route }
    end
  end
end
