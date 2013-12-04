module Content
  extend ActiveSupport::Concern

  included do
    default_scope ->{ order('ordinal ASC') }

    belongs_to :contentable, polymorphic: true
  end
end