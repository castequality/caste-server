class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :caption, :thumbnail, :url
end
