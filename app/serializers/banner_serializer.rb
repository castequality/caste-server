class BannerSerializer < ActiveModel::Serializer
  cached

  delegate :cache_key, to: :object

  attributes :id, :image_url, :hover_image_url, :project_id

  def project_id
    object.resource_id
  end
end
