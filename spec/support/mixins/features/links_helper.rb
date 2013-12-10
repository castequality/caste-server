module FeaturesHelper
  include LinksHelper

  def path_for(resource)
    "/#{resource.class.name.downcase.pluralize}/#{resource.to_param}"
  end

  def find_link_for(route)
    find("##{link_for(route)}")
  end
end
