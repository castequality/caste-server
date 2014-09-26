require "spec_helper"

describe "GET /posts" do
  it "includes all published posts" do
    create(:post, :published)

    get posts_path, {}, json_header

    expect(response.status).to eq 200
    expect(response).to match_response_schema("posts")
  end

  def json_header
    { "Content-Type" => "application/json" }
  end
end
