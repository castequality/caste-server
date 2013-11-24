class Visual < ActiveRecord::Base
  belongs_to :source

  delegate :name, to: :source, prefix: true
end
