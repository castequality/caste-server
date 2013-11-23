module FeaturesHelper
  def link_for(route)
    find("##{route}-link")
  end
end
