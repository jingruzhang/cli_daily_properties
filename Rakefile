#require "bundler/gem_tasks"
#require "rspec/core/rake_task"

#RSpec::Core::RakeTask.new(:spec)

#task :default => :spec

require_relative './config/environment'

def reload!
  load './lib/daily_properties/scraper.rb'
end

desc "A console"
task :console do
  Pry.start
end