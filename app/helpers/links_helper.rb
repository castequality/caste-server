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

  def header_link_to(route, link_path = nil)
    link_text = t("header.links.#{route}")
    link_path ||= __send__("#{route}_path")

    link_to link_text, link_path, id: "#{route}-link", class: "page-link"
  end
end
