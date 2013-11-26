class VisualsController < InheritedResources::Base
  has_scope :imported, default: true, type: :boolean
end
