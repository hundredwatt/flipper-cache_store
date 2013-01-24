# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "flipper-rails"
  gem.homepage = "http://github.com/hundredwatt/flipper-rails"
  gem.license = "MIT"
  gem.summary = %Q{Integrate Flipper into Rails}
  gem.description = %Q{Integrate Flipper into Rails (https://github.com/jnunemaker/flipper)}
  gem.email = "hundredwatt@gmail.com"
  gem.authors = ["Jason Nochlin"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::SpecTask.new(:test) do |spec|
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "flipper-rails #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
