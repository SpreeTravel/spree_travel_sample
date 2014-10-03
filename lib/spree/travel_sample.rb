require "colored"

module Spree
  module TravelSample

    def self.load_travel_sample(dir, file)
      path = File.join(travel_samples_path, dir, "#{file}.rb")
      if !$LOADED_FEATURES.include?(path)
        puts ("#" * 80).yellow
        puts "[#{file.titleize}]".yellow
        puts ("#" * 80).yellow
        require path
      else
        puts ("#" * 80).yellow.bold
        puts "[#{file.titleize}] already loaded".yellow.bold
        puts ("#" * 80).yellow.bold
      end
    end

    private

    def self.travel_samples_path
      Pathname.new(File.join(File.dirname(__FILE__), '..', '..', 'db', 'travel_samples'))
    end
  end
end
