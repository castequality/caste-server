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
    subject { page }

    given(:photo)   { build :photo }
    given(:project) { build :project, photos: [photo] }

    background do
      photo.save!
      project.save!
      visit project_path(project)
    end

    it { should have_project project }
    it { should have_link_for_project project }
  end
end
