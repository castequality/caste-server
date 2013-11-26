require 'spec_helper'

feature "Visuals page" do
  given(:visual) { build :visual, :imported }

  background do
    visual.save!
  end

  scenario "displays the imported visuals" do
    visit visuals_path

    expect(page).to have_visual visual
  end
end
