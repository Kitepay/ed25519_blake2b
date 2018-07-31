require "bundler/gem_tasks"
require 'rake/extensiontask'

spec = Gem::Specification.load('ed25519_blake2b.gemspec')

Rake::ExtensionTask.new('ed25519_blake2b', spec) do |ext|
  ext.source_pattern = '*.{c,h}'
end

task default: :full

desc 'Clean and compile'
task full: %w(clean compile)
