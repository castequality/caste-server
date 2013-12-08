namespace :products do
  desc "Loads from store"
  task load: :environment do
    LoadsBigCartelProducts.new("castequality").load!
  end
end
