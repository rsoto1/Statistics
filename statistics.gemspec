# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'statistics/version'

Gem::Specification.new do |spec|
  spec.name          = "statistics"
  spec.version       = Statistics::1.0.0
  spec.authors       = "Rocio"
  spec.email         = "rsoto1@hotmail.com"
  spec.summary       ="Gem to obtain the statistics for your rails app"
  spec.description   ="Optional"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = "lib"

  spec.add_dependency "rails", "~> 4.1.5"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "postgresql"
  spec.add_development_dependency "rspec-rails", "3.1.0"
end
