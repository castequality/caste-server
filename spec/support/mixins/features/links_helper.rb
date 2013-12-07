module FeaturesHelper
  include LinksHelper

  def find_link_for(route)
    find("##{link_for(route)}")
  end
end
