class Photo < ActiveRecord::Base
  include Content

  has_attached_file :file,
      styles: {
        medium: "400x400>",
        large: "1024x1024>",
        banner: "750x118#"
      }

  def url(*args)
    super() || file.url(*args)
  end
end
