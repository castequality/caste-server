class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :video_url, :published_at, :photo_ids

  has_many :photos

  embed :ids, include: true
end
