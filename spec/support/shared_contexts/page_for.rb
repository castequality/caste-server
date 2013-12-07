shared_context :page_for do |type|
  subject { page }

  before do
    visit __send__("#{type}_path")
  end
end