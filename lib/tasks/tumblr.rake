namespace :tumblr do
  desc "Loads posts from tumblr"
  task posts: :environment do
    LoadsFromTumblr.new("casteblog").load!
  end

  desc "Loads visuals from tumblr"
  task visuals: :environment do
    SyncsVisualsJob.enqueue
  end
end
