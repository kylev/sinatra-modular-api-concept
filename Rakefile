begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
  true
end

desc 'Run the full test suite.'
task test: [:spec]

task default: :test
