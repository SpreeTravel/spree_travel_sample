require 'ffaker'
require 'pathname'
require 'spree/travel_sample'

namespace :spree_travel_sample do
  desc 'Loads travel sample data'
  task :load => :environment do
    if ARGV.include?("db:migrate")
      puts %Q{
Please run db:migrate separately from spree_travel_sample:load.

Running db:migrate and spree_travel_sample:load at the same time has been known to
cause problems where columns may be not available during sample data loading.

Migrations have been run. Please run "rake spree_travel_sample:load" by itself now.
      }
      exit(1)
    end

    SpreeSample::Engine.load_travel_samples
  end
end


