require "spec_helper"

feature "The projects page" do
  context "without a linked project" do
    scenario "redirects to the featured project" do
      featured_project = create :featured_project

      visit projects_path

      expect(current_path).to eq project_path(featured_project)
    end
  end

  context "when linked to a project" do
    given(:photo)   { build :photo }
    given(:video)   { build :video }
    given(:project) { build :project, photos: [photo], video: video }

    background do
      photo.save!
      video.save!
      project.save!
      visit project_path(project)
    end

    scenario "displays the linked project" do
      expect(page).to have_project project
    end
  end
end
