# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bendy/version'

Gem::Specification.new do |spec|
  spec.name          = "bendy"
  spec.version       = Bendy::VERSION
  spec.authors       = ["Chris Wilson"]
  spec.email         = ["chris@bendyworks.com"]
  spec.summary       = %q{A collection of helpful libraries}
  spec.description   = %q{This gem is a cornucopia of software bric-à-brac, for great justice}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
