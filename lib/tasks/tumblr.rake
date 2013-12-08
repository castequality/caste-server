namespace :tumblr do
  desc "Seeds from tumblr"
  task seed: :environment do
    %w[posts photos projects visuals].each do |task|
      Rake::Task["tumblr:#{task}"].invoke
    end
  end

  task sources: :environment do
    %w[waltwolfe zandertaketomo chrismulhern].each do |source|
      Source.find_or_create_by name: source
    end
  end

  desc "Loads posts from tumblr"
  task posts: :environment do
    LoadsPostsFromTumblr.new("casteblog").load!
  end

  desc "Loads photos from tumblr"
  task photos: :environment do
    LoadsPhotosFromTumblr.new("castequality").load!
  end

  desc "Loads projects from tumblr"
  task projects: :environment do
    LoadsProjectsFromTumblr.new("casteproject").load!
  end

  desc "Loads visuals from tumblr"
  task visuals: :environment do
    SyncsVisuals.new(Source.all).sync!
  end

  task visuals: :sources
end
