class ProjectSerializer < ActiveModel::Serializer
  cached

  delegate :cache_key, to: :object

  attributes :id, :name, :video_url, :published_at, :photo_ids, :banner, :banner_hover

  has_many :photos

  embed :ids, include: true

  def banner
    object.banner.try(:image_url).to_s
  end

  def banner_hover
    object.banner.try(:hover_image_url).to_s
  end
end
