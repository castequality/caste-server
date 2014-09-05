module LinksHelper
  def link_for(name)
    "#{name}-link"
  end

  def store_url
    "//store.#{ENV['HOST'] || 'castequality.com'}"
  end

  def paging_links(**opts)
    render 'paging', opts
  end
end
