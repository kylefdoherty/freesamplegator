namespace :refresh do
  desc "Refresh Samples"
  task :samples => :environment do
    puts "Refreshing samples..."
    Site.refresh_samples
  end
end

namespace :trim do
  desc "Refresh Samples"
  task :samples => :environment do
    puts "Trimming samples..."
    Site.trim_samples
  end
end
