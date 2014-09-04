describe Project do
  it { should have_one(:banner) }
  it { should have_many(:photos) }
end
