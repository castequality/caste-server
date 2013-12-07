class Visual < ActiveRecord::Base
  include Publishable

  belongs_to :source, touch: true

  delegate :name, to: :source, prefix: true, allow_nil: true

  def classes
    ["visual", source_name].reject(&:blank?).join('-')
  end
end
