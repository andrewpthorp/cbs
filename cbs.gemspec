# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cbs/version'

Gem::Specification.new do |spec|
  spec.name = 'cbs'
  spec.licenses = ['MIT']
  spec.summary = "Ruby client for the CBS Sports API"
  spec.description = "Ruby client for the CBS Sports API"

  spec.author = 'Andrew Thorp'
  spec.email = 'andrewpthorp@gmail.com'
  spec.homepage = 'https://github.com/andrewpthorp/cbs'

  spec.files = %w(LICENSE.md README.md Rakefile cbs.gemspec)
  spec.files += Dir.glob("lib/**/*.rb")
  spec.files += Dir.glob("spec/**/*")

  spec.version = CBS::VERSION.dup

  spec.add_runtime_dependency 'faraday', '0.11.0'
  spec.add_runtime_dependency 'faraday_middleware', '0.11.0'
  spec.add_runtime_dependency 'hashie', '~> 3.5'
end
