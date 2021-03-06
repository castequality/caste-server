class Visual < ActiveRecord::Base
  include Publishable

  belongs_to :source, touch: true

  def source_name
    source.name
  end
end
