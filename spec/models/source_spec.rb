require "spec_helper"

describe Source do
  it { should have_many(:visuals) }
end
