class ProjectsController < InheritedResources::Base
  def index
    redirect_to featured_project, params
  end

  def video_first?
    params[:video].presence
  end
  helper_method :video_first?

  def video_last?
    ! video_first?
  end
  helper_method :video_last?
end
