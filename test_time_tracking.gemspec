# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_time_tracking/version'

Gem::Specification.new do |spec|
  spec.name          = "test_time_tracking"
  spec.version       = TestTimeTracking::VERSION
  spec.authors       = ["Dylan Jhaveri"]
  spec.email         = ["dylanjhaveri@gmail.com"]
  spec.description   = %q{Time your Ruby tests and print the slowest ones.}
  spec.summary       = %q{Time all the tests in your testing suite and print out the slowest ones so you can make them faster.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
