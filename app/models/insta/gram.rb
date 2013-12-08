module Insta
  class Gram < ActiveRecord::Base
    self.table_name = "instagrams"

    default_scope ->{ order "created_at DESC" }

    def self.newest
      first || OpenStruct.new
    end
  end
end
