# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'daily_properties/version'

Gem::Specification.new do |spec|
  spec.name          = "daily_properties"
  spec.version       = DailyProperties::VERSION
  spec.authors       = ["Jingru Zhang"]
  spec.email         = ["zhang.jingru.93@gmail.com"]

  spec.summary       = %q{It displays a list of 26 properties recently sold within a zipcode area, scrapped from zillow.com}
  #spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/jingruzhang/cli_daily_properties.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  spec.files         = ["lib/daily_properties.rb", "lib/daily_properties/cli.rb", "lib/daily_properties/scraper.rb", "lib/daily_properties/property.rb", "config/environment.rb"]
  
  spec.executables   << 'daily-properties'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "nokogiri", "~> 1.7"
end
