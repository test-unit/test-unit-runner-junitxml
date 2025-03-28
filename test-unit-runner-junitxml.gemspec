lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test/unit/runner/junitxml/version"

Gem::Specification.new do |spec|
  spec.name          = "test-unit-runner-junitxml"
  spec.version       = Test::Unit::Runner::Junitxml::VERSION
  spec.authors       = ["OGAWA KenIchi"]
  spec.email         = ["kenichi@ice.email.ne.jp"]

  spec.summary       = %q{A test-unit runner that reports test result in JUnit XML format.}
  spec.homepage      = "https://github.com/test-unit/test-unit-runner-junitxml"
  spec.license       = "MIT"
  spec.metadata      = {
    "homepage_uri" => "https://github.com/test-unit/test-unit-runner-junitxml",
  }

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rexml"

  spec.add_runtime_dependency "test-unit"
end
