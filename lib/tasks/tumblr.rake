namespace :tumblr do
  desc "Loads posts from tumblr"
  task posts: :environment do
    LoadsPostsFromTumblr.new("casteblog").load!
  end

  desc "Loads photos from tumblr"
  task photos: :environment do
    LoadsPhotosFromTumblr.new("castequality").load!
  end

  desc "Loads visuals from tumblr"
  task visuals: :environment do
    SyncsVisualsJob.enqueue
  end
end
