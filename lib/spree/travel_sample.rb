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

    def self.create_shipping_category(shipping_attrs)
      if Spree::ShippingCategory.where(:name => shipping_attrs[:name]).first
        puts "skipped: ".yellow + "ShippingCategory: #{shipping_attrs[:name]}"
      else
        Spree::ShippingCategory.create!(:name => shipping_attr[:name])
        puts "created: ".green + "ShippingCategory: #{shipping_attr[:name]}"
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
      if taxon
        puts "skipped: ".yellow + "Taxon: #{taxon_attrs[:name]}"
      else
        taxon = Spree::Taxon.create(taxon_attrs)
        puts "created: ".green + "Taxon: #{taxon_attr[:name]}"
      end
      taxon
    end

    def self.create_taxonomy(taxonomy_attrs)
      taxonomy = Spree::Taxonomy.where(:name => taxonomy_attrs[:name]).first
      if taxonomy
        puts "skipped: ".yellow + "Taxonomy: #{taxonomy_attrs[:name]}"
      else
        taxonomy = Spree::Taxonomy.create(taxonomy_attrs)
        puts "created: ".green + "Taxonomy: #{taxonomy_attr[:name]}"
      end
      taxonomy
    end

    def self.create_property(property_attrs)
      property = Spree::Property.where(:name => property_attrs[:name]).first
      if property
        puts "skipped: ".yellow + "Property: #{property_attrs[:name]}"
      else
        taxon = Spree::Property.create(property_attrs)
        puts "created: ".green + "Property: #{property_attr[:name]}"
      end
      taxon
    end

    private

    def self.travel_samples_path
      Pathname.new(File.join(File.dirname(__FILE__), '..', '..', 'db', 'travel_samples'))
    end
  end
end
