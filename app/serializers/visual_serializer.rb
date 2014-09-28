class VisualSerializer < ActiveModel::Serializer
  cached

  delegate :cache_key, to: :object

  attributes :id, :caption, :photo, :thumbnail, :source

  def source
    object.source_name
  end
end
