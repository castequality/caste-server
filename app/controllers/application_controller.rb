class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def featured_project
    @featured_project ||= Project.featured
  end
  helper_method :featured_project
end
