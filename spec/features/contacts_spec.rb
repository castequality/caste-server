require 'spec_helper'

feature 'Contacts page' do
  before do
    visit contact_path
  end

  scenario 'has the abouts us' do
    expect(page).to have_content t('about')
  end

  scenario 'has the branding' do
    expect(page).to have_content t('brand')
  end

  scenario 'has the contact email' do
    expect(page).to have_mail_to '.contact', email: t('contact.email')
  end
end
