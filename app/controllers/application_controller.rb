class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  has_scope :page, default: 1

  def featured_project
    @featured_project ||= Project.featured
  end
  helper_method :featured_project
end
