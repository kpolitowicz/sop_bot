require 'rubygems'
require 'bundler/setup'

if %w[development test].include? ENV['RAILS_ENV']
  require 'standalone_migrations'
  StandaloneMigrations::Tasks.load_tasks

  require 'rspec/core'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.pattern = FileList['spec/**/*_spec.rb']
  end

  task default: [:spec]
end
