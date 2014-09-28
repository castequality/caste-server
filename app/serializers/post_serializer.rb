class PostSerializer < ActiveModel::Serializer
  cached

  delegate :cache_key, to: :object

  attributes :id, :body, :name, :published_at
end
