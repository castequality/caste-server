require "spec_helper"

describe "GET /api/posts" do
  it "includes all published posts" do
    create(:post, :published)

    get "/api/posts", {}, json_header

    expect(response.status).to eq 200
    expect(response).to match_response_schema("posts")
  end
end
