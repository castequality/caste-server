class ProjectsController < InheritedResources::Base
  def index
    @projects = Project.all

    render json: @projects
  end
end
