module Paginated
  extend ActiveSupport::Concern

  included do
    respond_to :json, :html, :js

    has_scope :page, default: 1
    has_scope :per
  end
end
