describe "GET /api/videos" do
  it "returns published videos" do
    get "/api/videos", {}, json_header

    expect(response.status).to eq 200
    expect(response).to match_response_schema("videos")
  end
end
