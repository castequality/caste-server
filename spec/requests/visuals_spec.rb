describe "GET /api/visuals" do
  it "returns visuals" do
    create(:visual)

    get "/api/visuals", {}, json_header

    expect(response.status).to eq 200
    expect(response).to match_response_schema("visuals")
  end
end
