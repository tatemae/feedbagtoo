# encoding: utf-8

require 'rubygems'
require 'bundler'
require 'rake/testtask'
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
  gem.name = "feedbagtoo"
  gem.summary = "Fork of the feedbag gem that returns title along with url."
  gem.description = "This gem will return title and url for each feed discovered at a given url"
  gem.email = "justin@tatemae.com"
  gem.homepage = "http://github.com/tatemae/feedbagtoo"
  gem.authors = ["Axiombox", "David Moreno", "Joel Duffin", "Justin Ball", "Fabien Penso"]
end
Jeweler::RubygemsDotOrgTasks.new


task :default => :test

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList["test/feedbag_test.rb"]
  t.verbose = true
end
