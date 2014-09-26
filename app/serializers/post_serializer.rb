class PostSerializer < ActiveModel::Serializer
  attributes :id, :body, :name, :published_at
end
