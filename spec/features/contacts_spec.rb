require 'spec_helper'

feature 'Contacts page' do
  include_context :page_for, :contact

  it { should have_content t('about') }
  it { should have_content t('brand') }
  it { should have_mail_to '.contact', email: t('contact.email') }
end
