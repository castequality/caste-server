require 'spec_helper'

feature 'Splash page' do
  context 'when nothing is featured' do
    scenario 'the user is redirected to the posts page' do
      visit root_path

      expect(current_path).to eq posts_path
    end
  end

  context 'when a feature exists' do
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
end
