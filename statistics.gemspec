# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'statistics/version'

Gem::Specification.new do |spec|
  spec.name          = "statistics"
  spec.version       = Statistics::VERSION
  spec.authors       = "Rocio"
  spec.email         = "rsoto1@hotmail.com"
  spec.summary       ="Gem to obtain the statistics for your rails app"
  spec.description   ="Optional"
  spec.homepage      = "http://myblog.com"
  spec.license       = "MIT"

  spec.files         = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile". "README.rdoc"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = "lib"

  spec.add_dependency "rails", "~> 4.1.5"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pg"
  spec.add_development_dependency "rspec-rails", "3.1.0"
end
