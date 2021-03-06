# coding: utf-8
# To get the absolute path to the lib directory relative to the current file 'vider.gemspec'
lib = File.expand_path('../lib', __FILE__)
# This adds the lib directory to the Ruby LOAD_PATH array actually prepending it, if it is not there.
# $LOAD_PATH can be changed to $: which is a reserved keyword for the load path
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vider/version'

Gem::Specification.new do |spec|
  spec.name          = "vider"
  spec.version       = Vider::VERSION
  spec.authors       = ["Islam Wazery"]
  spec.email         = ["wazery@ubuntu.com"]
  spec.summary       = %q{A Ruby gem to wrap the functionalities of the Vide jQuery plugin.}
  spec.description   = %q{A Ruby gem to wrap the functionalities of the Vide jQuery plugin.}
  spec.homepage      = "https://github.com/wazery/Vider"
  spec.license       = "MIT"

  spec.files         = Dir["{lib, vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 4.1.6"

  spec.add_development_dependency "bundler", "~> 1.7.4"
  spec.add_development_dependency "rake", "~> 10.0"
  # spec.add_development_dependency "rspec"
  # spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  # spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "coveralls"
end
