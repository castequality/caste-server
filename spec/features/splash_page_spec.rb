require "spec_helper"

feature "Splash page" do
  context "when nothing is featured" do
    scenario "the user is redirected to the posts page" do
      visit root_path

      expect(current_path).to eq posts_path
    end
  end

  context "when a splash exists" do
    subject { page }

    given(:splash) { build :featured_splash }

    background do
      splash.save!
      visit root_path
    end

    it { should have_splash splash }

    scenario "has a link to enter the site" do
      find("#enter-site").click

      expect(current_path).to eq posts_path
    end

    context "when the splash has no name" do
      given(:splash) { build :featured_splash, name: nil }

      it { should have_content t("splash.name", id: splash.identifier) }
    end
  end

  context "when more than one splash is featured" do
    subject { page }

    given(:first)   { build :splash, :featured }
    given(:second)  { build :splash, :featured }

    background do
      first.save!
      second.save!
      visit root_path
    end

    it { should have_splash second }
  end
end
