module Spree
  module TravelSample
    def self.load_travel_sample(file)
      path = File.expand_path(travel_samples_path + "#{file}.rb")
      # Check to see if the specified file has been loaded before
      if !$LOADED_FEATURES.include?(path)
          require path
        puts "Loaded #{file.titleize} travel samples"
      end
    end

    private
      def self.travel_samples_path
        Pathname.new(File.join(File.dirname(__FILE__), '..', '..', 'db', 'travel_samples'))
      end
  end
end
