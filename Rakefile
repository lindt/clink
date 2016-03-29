require 'rake/testtask'

task default: :test

task test: :format
task test: :rubocop
task test: :cucumber

desc 'Checks ruby style'
task :rubocop do
  sh 'rubocop'
end

task :cucumber do
  options = %w()
  options.push '--tags ~@skip'
  sh "cucumber #{options * ' '}"
end

task :format do
  sh 'gherkin_format features/*.feature'
end
