require "bundler/gem_tasks"
require 'rake/testtask'
require 'rdoc/task'

task default: [:test]

Rake::TestTask.new do |t|
  t.libs.push 'lib'
  t.test_files = FileList['spec/*_spec.rb']
  t.verbose = true
end

RDoc::Task.new do |rdoc|
  rdoc.rdoc_files.include("README.md", "lib/**/*.rb")
  rdoc.options << '--format=bootstrap'
  rdoc.options << '--markup=markdown'
end
