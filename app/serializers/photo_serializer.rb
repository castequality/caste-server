class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :caption, :thumbnail, :url

  def caption
    object.caption.to_s
  end
end
