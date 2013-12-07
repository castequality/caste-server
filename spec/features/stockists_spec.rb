require 'spec_helper'

feature "The stockists page" do
  context "has content for" do
    include_context :page_for, :stockists

    it { should have_content t("loading.stockists") }
  end
end
