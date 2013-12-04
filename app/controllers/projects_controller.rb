class ProjectsController < InheritedResources::Base
  def index
    redirect_to featured_project
  end
end
