require "colored"

module Spree
  module TravelSample

    def self.load_travel_sample(dir, file)
      path = File.join(travel_samples_path, dir, "#{file}.rb")
      if !$LOADED_FEATURES.include?(path)
        puts "[#{dir}/#{file}] Loading ...".yellow.bold
        require path
      else
        puts "[#{dir}/#{file}] Already Loaded".yellow
      end
    end

    def self.create_taxon(hash)
      if hash[:parent]
        taxon_attrs[:parent] = Spree::Taxon.find_by_name!(taxon_attrs[:parent])
      end
      if hash[:taxonomy]
        taxon_attrs = Spree::Taxonony.find_by_name!(taxon_attrs[:taxonomy])
      end
      Spree::Taxon.find_or_create_by_name(taxon_attrs)
    end

    private

    def self.travel_samples_path
      Pathname.new(File.join(File.dirname(__FILE__), '..', '..', 'db', 'travel_samples'))
    end
  end
end
