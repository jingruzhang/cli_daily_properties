# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'daily_properties/version'

Gem::Specification.new do |spec|
  spec.name          = "daily_properties"
  spec.version       = DailyProperties::VERSION
  spec.authors       = ["Jingru Zhang"]
  spec.email         = ["zhang.jingru.93@gmail.com"]

  spec.summary       = %q{A CLI gem that displays a list of properties that were recently sold within a zipcode area, scrapped from zillow.com}
  spec.description   = %q{This CLI gem helps home buyers and sellers to view the most recently sold properties within a given zipcode. Use 'daily-properties' command to run. It asks users for a zipcode input, and gives users a list of the most recently sold properties in the area. Users can type respective property number to get the url to view more details of the property.}
  spec.homepage      = "https://github.com/jingruzhang/cli_daily_properties"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end
  spec.files          = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths  = ['lib']
  spec.executables   = ['daily-properties']

  spec.post_install_message = "Thanks for installing! Happy researching."

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "nokogiri", "~> 1.7"
  spec.add_development_dependency 'pry'
end
