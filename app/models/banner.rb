class Banner < ActiveRecord::Base
  include Randomizable

  belongs_to :resource, polymorphic: true, touch: true
end
