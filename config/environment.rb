require "nokogiri"
require 'open-uri'
require 'pry'
require 'bundler'
Bundler.require

require_relative "../lib/daily_properties/version"
require_relative '../lib/daily_properties/cli'
require_relative '../lib/daily_properties/scraper'
require_relative '../lib/daily_properties/property'

# serves as a config/environment file that requires the rest of the files and is required by the main console file