require 'spec_helper'

feature 'Splash page' do
  given(:feature) { build :featured_feature }

  background do
    feature.save!
    visit root_path
  end

  scenario 'displays the newest feature video' do
    expect(page).to have_feature feature
  end

  scenario 'has a link to enter the site' do
    find('#enter-site').click

    expect(current_path).to eq posts_path
  end
end
