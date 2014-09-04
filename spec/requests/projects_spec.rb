describe "GET /api/projects" do
  it "includes all published projects" do
    project = create(:project, :published, photos: [create(:photo)], )
    create(:banner, resource: project)

    get "/api/projects", {}, json_header

    expect(response.status).to eq 200
    expect(response).to match_response_schema("projects")
  end
end
