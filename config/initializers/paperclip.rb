storage = (Rails.env.staging? || Rails.env.production?) ? :s3 : :file

Paperclip::Attachment.default_options.merge!(
  storage: storage,
  bucket: ENV['S3_BUCKET'],
  url: "/system/:class/:attachment/:id/:style/:filename",
  s3_credentials: {
    access_key_id: ENV['S3_ACCESS_KEY_ID'],
    secret_access_key: ENV['S3_SECRET_ACCESS_KEY']
  }
)
