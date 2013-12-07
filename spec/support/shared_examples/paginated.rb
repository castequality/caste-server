shared_examples_for :paginated do |plural|
  singular = plural.to_s.singularize

  def visit_page(plural, **opts)
    path =  __send__("#{plural}_path", opts)
    visit path
  end

  def have_publishable(publishable)
    class_name = publishable.class.model_name.singular
    __send__("have_#{class_name}", publishable)
  end

  def next_page_link
    find("#next-page")
  end

  def have_next_page_link
    have_selector "#next-page"
  end

  context "when there is a next page of #{plural}" do
    scenario "paginates" do
      second = create singular
      first  = create singular

      visit_page plural, per: 1

      expect(page).to have_publishable first
      expect(page).not_to have_publishable second

      next_page_link.click

      expect(page).to have_publishable second
      expect(page).not_to have_publishable first
    end
  end

  context "when there are no more #{plural}" do
    scenario "doesn't paginate" do
      post = create singular

      visit_page plural

      expect(page).not_to have_next_page_link
    end
  end
end