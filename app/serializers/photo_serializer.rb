class PhotoSerializer < ActiveModel::Serializer
  cached

  delegate :cache_key, to: :object

  attributes :id, :caption, :thumbnail, :url
end
