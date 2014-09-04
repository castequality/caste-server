namespace :tumblr do
  desc "Seeds from tumblr"
  task seed: %w[posts projects visuals]

  task sources: :environment do
    %w[chrismulhern devonjconnell waltwolfe zandertaketomo].each do |source|
      Source.find_or_create_by(name: source)
    end
  end

  desc "Loads posts from tumblr"
  task posts: :environment do
    LoadsPostsFromTumblr.new("casteblog").load!
  end

  desc "Loads projects from tumblr"
  task projects: :environment do
    LoadsProjectsFromTumblr.new("casteproject").load!
  end

  desc "Loads visuals from tumblr"
  task visuals: [:environment, :sources] do
    SyncsVisuals.sync!
  end
end
