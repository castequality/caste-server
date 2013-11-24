CasteServer::Application.configure do
  config.after_initialize do
    if Rails.env.production? || Rails.env.staging?
      Delayed::Job.scaler = :heroku
    else
      Delayed::Job.scaler = :local
    end
  end
end