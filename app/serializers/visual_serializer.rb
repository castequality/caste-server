class VisualSerializer < ActiveModel::Serializer
  attributes :id, :caption, :photo, :thumbnail, :source

  def source
    object.source_name
  end
end
