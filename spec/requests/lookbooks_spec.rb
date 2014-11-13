describe "GET /api/lookbooks", type: :request do
  it "returns all lookbooks" do
    get "/api/lookbooks", json_header

    expect(response.status).to eq 200
    expect(response).to match_response_schema("lookbooks")
  end
end
