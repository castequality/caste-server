require 'spec_helper'

feature 'Posts page' do
  scenario 'has the most recently published posts' do
    post = create :post

    visit posts_path

    expect(page).to have_post post
  end

  scenario 'does not display non-published posts' do
    post = create :post, :unpublished

    visit posts_path

    expect(page).not_to have_post post
  end

  scenario 'display a post with videos' do
    with_video = create :post_with_videos, video_count: 1

    visit posts_path

    expect(page).to have_video_post with_video
  end

  scenario 'displays a post with photos' do
    with_photos = create :post, :with_photos

    visit posts_path

    expect(page).to have_photo_post with_photos
  end
end