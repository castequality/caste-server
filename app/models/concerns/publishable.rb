module Publishable
  extend ActiveSupport::Concern

  included do
    default_scope ->{ published }

    scope :published, ->{ where('published_at < ?', Time.now).newest }
    scope :newest, ->{ order('published_at DESC') }

    def published?
      published_at.present? && published_at < Time.now
    end
  end
end
