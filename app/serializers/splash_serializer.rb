class SplashSerializer < ActiveModel::Serializer
  attributes :id, :name, :video_url, :published_at

  def name
    object.name.to_s
  end
end
