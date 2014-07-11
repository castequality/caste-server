module Publishable
  extend ActiveSupport::Concern

  included do
    default_scope ->{ published }

    scope :published, ->{ where('published_at < ?', Time.current).newest }
    scope :newest, ->{ order('published_at DESC') }

    def published_at=(published_at)
      super(published_at.presence || Time.current)
    end

    def published_at
      super.presence || Time.current
    end

    def published?
      published_at.present? && published_at < Time.current
    end
  end
end
