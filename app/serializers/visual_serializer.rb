class VisualSerializer < ActiveModel::Serializer
  attributes :id, :caption, :photo, :thumbnail, :source

  def caption
    object.caption.to_s
  end

  def source
    object.source_name
  end
end
