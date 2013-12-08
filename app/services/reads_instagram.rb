require 'i18n'

class ReadsInstagram
  def initialize(client = Instagram.client)
    @user_id = ENV['INSTAGRAM_USER_ID']
    @client  = client
  end

  def newest
    most_recent.images.low_resolution.url
  end

  def url
    I18n.t("social.urls.instagram", user: user.username)
  end

  private
    def user
      @client.user(@user_id)
    end

    def most_recent
      @most_recent ||= @client.user_recent_media(@user_id).first
    end
end
