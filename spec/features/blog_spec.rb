require 'spec_helper'

feature "The blog" do
  scenario "displays the most recently published posts" do
    post = create :post

    visit posts_path

    expect(page).to have_post post
  end

  scenario "hides non-published posts" do
    post = create :post, :unpublished

    visit posts_path

    expect(page).not_to have_post post
  end

  scenario "displays the photo feed" do
    photo = create :photo

    visit posts_path

    expect(page).to have_photo photo
  end

  context "has content for" do
    include_context :page_for, :posts

    scenario "instagram loading text" do
      expect(page).to have_content t("loading.instagram")
    end

    scenario "store loading text" do
      expect(page).to have_content t("loading.store")
    end

    context "social links" do
      it { should have_social_link_for :vimeo }
      it { should have_social_link_for :youtube }
      it { should have_social_link_for :twitter }
      it { should have_social_link_for :facebook }
    end
  end
end
