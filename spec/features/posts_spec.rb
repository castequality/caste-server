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

  scenario 'displays original visuals on the page' do
    visual = create :visual, :original

    visit posts_path

    expect(page).to have_visual visual
  end

  scenario 'paginates posts' do
    first   = create :post
    second  = create :post

    visit posts_path(page: 1, per: 1)

    expect(page).to have_post first
    expect(page).not_to have_post second
  end
end