module ApplicationHelper
  def store_url
    "//store.#{ENV['HOST'] || 'castequality.com'}"
  end

  def paging_links(**opts)
    render 'paging', opts
  end

  def featured_project_path
    project_path(featured_project, video: true)
  end

  def with_newest_instagram(&block)
    yield Insta::Gram.newest if block_given?
  end

  def with_random_product(&block)
    yield Product.random if block_given?
  end

  def with_random_banner(&block)
    yield Banner.random if block_given?
  end

  def header_link_to(route, link_path = nil)
    link_text = t("header.links.#{route}")
    link_path ||= __send__("#{route}_path")

    link_to link_text, link_path, id: "#{route}-link", class: "page-link"
  end
end
