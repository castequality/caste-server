class Photo < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  has_attached_file :file,
      styles: {
        medium: "400x400>",
        large: "1024x1024>",
        banner: "750x118#"
      }
end
