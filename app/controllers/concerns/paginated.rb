module Paginated
  extend ActiveSupport::Concern

  included do
    has_scope :page, default: 1
    has_scope :per, default: 10
  end
end
