CasteServer::Application.configure do
  config.after_initialize do
    if Rails.env.production? || Rails.env.staging?
      Delayed::Job.scaler = :heroku_cedar
    else
      Delayed::Job.scaler = :local
    end
  end
end