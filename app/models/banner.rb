class Banner < ActiveRecord::Base
  belongs_to :resource, polymorphic: true, touch: true
end
