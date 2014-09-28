class CachedCollectionSerializer < ActiveModel::ArraySerializer
  cached

  def cache_key
    [cache_key_prefix, collection_key].join('-')
  end

  private

  def collection_key
    object.maximum(:updated_at)
  end

  def cache_key_prefix
    @options[:root].to_s
  end
end
