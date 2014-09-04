class BannerSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :hover_image_url, :project_id

  def project_id
    object.resource_id
  end
end
