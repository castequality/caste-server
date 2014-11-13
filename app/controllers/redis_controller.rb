class RedisController < ApplicationController
  def index
    with_redis do |redis|
      version = params[:version].presence || "current"

      html_key = "index:#{version}"

      html = redis.get(html_key)

      raise ActionController::RoutingError, "#{html_key} not found" if html.blank?

      insert_csrf_meta(html)

      render text: html
    end
  end

  private

  def insert_csrf_meta(html)
    html.insert(head_pos(html), render_to_string(inline: "<%= csrf_meta_tags %>"))
  end

  def head_pos(html)
    head_open = html.index("<head")
    html.index(">", head_open) + 1
  end

  def body_bottom_pos(html)
    html.index("</body>")
  end

  def with_redis
    uri = URI.parse(ENV["REDISTOGO_URL"])

    redis = Redis.new(
      host: uri.host,
      port: uri.port,
      password: uri.password
    )

    yield redis

    redis.quit
  end
end
