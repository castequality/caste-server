module ApplicationHelper
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
end
