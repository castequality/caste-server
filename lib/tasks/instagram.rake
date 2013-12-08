namespace :instagram do
  desc "Loads from instagram"
  task load: :environment do
    LoadsFromInstagram.new(ENV['INSTAGRAM_USER_ID']).load!
  end
end
