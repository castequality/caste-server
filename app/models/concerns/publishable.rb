module Publishable
  extend ActiveSupport::Concern

  included do
    default_scope ->{ published.order('published_at DESC') }

    scope :published, ->{ where('published_at < ?', Time.now) }

    def published?
      published_at.present? && published_at < Time.now
    end
  end
end
