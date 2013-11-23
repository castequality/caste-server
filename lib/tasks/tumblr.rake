namespace :tumblr do
  desc "Loads posts from tumblr"
  task posts: :environment do
    loadsPosts = LoadsFromTumblr.new("casteblog")

    loadsPosts.load!
  end
end
