class SplashSerializer < ActiveModel::Serializer
  cached

  delegate :cache_key, to: :object

  attributes :id, :name, :video_url, :published_at
end
