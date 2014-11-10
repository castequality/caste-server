describe "GET /api/lookbooks", type: :request do
  it "returns all lookbooks" do
    get lookbooks_path, format: :json

    expect(response.status).to eq 200
    expect(response).to match_response_schema("lookbooks")
  end
end
