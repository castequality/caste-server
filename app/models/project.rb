class Project < ActiveRecord::Base
  Null = Naught.build do |config|
    config.black_hole
    config.mimic Project
  end

  has_one :banner, as: :imageable, class_name: Photo
  has_one :banner_hover, as: :imageable, class_name: Photo

  def self.featured
    find_by(featured: true) || Null.new
  end
end