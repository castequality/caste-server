require "spec_helper"

describe "GET /api/splashes" do
  it "returns published splashes" do
    create(:splash, :published)

    get "/api/splashes", {}, json_header

    expect(response.status).to eq 200
    expect(response).to match_response_schema("splashes")
  end
end
