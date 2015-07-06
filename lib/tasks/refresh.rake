namespace :refresh do
  desc "Refresh Samples"
  task :samples => :environment do
    puts "Refreshing samples..."
    Site.refresh_samples
  end
end
