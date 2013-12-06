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

  scenario 'displays orphaned photos on the page' do
    photo = create :photo

    visit posts_path

    expect(page).to have_photo photo
  end

  scenario 'paginates posts' do
    first   = create :post
    second  = create :post

    visit posts_path(page: 1, per: 1)

    expect(page).to have_post second
    expect(page).not_to have_post first
  end
end