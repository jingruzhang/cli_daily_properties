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
  spec.description   = <<-EOF
  This CLI gem helps home buyers and sellers to view the most recently sold properties within a given zipcode. Use 'daily-properties' command to run.
  It asks users for a zipcode input, and gives users a list of 26 most recently sold properties. Users can type respective property number to get the url to view more details of the property.
  EOF

  spec.homepage      = "https://github.com/jingruzhang/cli_daily_properties"
  spec.license       = "MIT"


#  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
#    f.match(%r{^(test|spec|features)/})
#  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri", "~> 1.7"
end
