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

    def self.create_taxon(taxon_attrs)
      if taxon_attrs[:parent]
        taxon_attrs[:parent_id] = Spree::Taxon.where(:name => taxon_attrs[:parent]).first.id
        taxon_attrs.delete(:parent)
      end
      if taxon_attrs[:taxonomy]
        taxon_attrs[:taxonomy_id] = Spree::Taxonomy.find_by_name!(taxon_attrs[:taxonomy]).id
        taxon_attrs.delete(:taxonomy)
      end
      taxon = Spree::Taxon.where(:name => taxon_attrs[:name]).first
      taxon = Spree::Taxon.create(taxon_attrs) unless taxon
      taxon
    end

    private

    def self.travel_samples_path
      Pathname.new(File.join(File.dirname(__FILE__), '..', '..', 'db', 'travel_samples'))
    end
  end
end
