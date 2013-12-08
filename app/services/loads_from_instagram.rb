class LoadsFromInstagram
  def initialize(user_id, client = Instagram.client)
    @user_id = user_id
    @client  = client
  end

  def load!
    unless Insta::Gram.find_by(url: most_recent_link).present?
      Insta::Gram.create! \
        url: most_recent_link,
        thumbnail: most_recent_thumbnail
    end
  end

  private
    def user
      @client.user(@user_id)
    end

    def most_recent
      @most_recent ||= @client.user_recent_media(@user_id).first
    end

    def most_recent_link
      most_recent.link
    end

    def most_recent_thumbnail
      most_recent.images.low_resolution.url
    end
end
