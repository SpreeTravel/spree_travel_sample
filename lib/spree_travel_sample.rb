# frozen_string_literal: true

require 'spree_core'
require 'spree/travel_sample'

module SpreeTravelSample
  class Engine < Rails::Engine
    engine_name 'spree_travel_sample'

    def self.sample_hash
      {
        'common' => %w[shipping_categories taxonomies taxons],
        'car' => %w[taxons products rates stock]
      }
    end

    def self.load_travel_dir(dir)
      files = sample_hash[dir]
      files.each do |file|
        Spree::TravelSample.load_travel_sample(dir, file)
      end
    end

    def self.load_travel_samples(what)
      if what == 'all'
        sample_hash.keys.each do |dir|
          load_travel_dir(dir)
        end
      else
        load_travel_dir('common')
        load_travel_dir(what)
      end
    end
  end
end
