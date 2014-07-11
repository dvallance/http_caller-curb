# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'http_caller/curb/version'

Gem::Specification.new do |spec|
  spec.name          = "http_caller-curb"
  spec.version       = HttpCaller::CURB_VERSION
  spec.authors       = ["Dave Vallance"]
  spec.email         = ["davevallance@gmail.com"]
  spec.summary       = %q{Used with the simple_api_client gem to allow the use of Curb as the http client.}
  spec.description   = %q{The simple_api_client gem provides Net::Http as a default HttpCaller, this gem adds Curb as an HttpCaller option.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'simple_api_client', '> 0.0.1'
  spec.add_runtime_dependency 'curb'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
