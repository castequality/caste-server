namespace :db do
  desc "Start fresh"
  task clean: :environment do
    %w[db:drop db:create db:migrate db:test:prepare].each do |task|
      Rake::Task[task].invoke
    end
  end
end
