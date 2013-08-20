# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cbs/version'

Gem::Specification.new do |spec|
  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.add_dependency 'addressable', '~> 2.2'
  spec.add_dependency 'faraday', '~> 0.8'
  spec.add_dependency 'faraday_middleware', '~> 0.9'
  spec.add_dependency 'hashie', '~> 2.0'
  spec.add_dependency 'multi_json', '~> 1.3'
  spec.add_dependency 'netrc', '~> 0.7.7'
  spec.author = 'Andrew Thorp'
  spec.description = %q{Simple wrapper for the CBS Sports API}
  spec.email = 'andrewpthorp@gmail.com'
  spec.files = %w(LICENSE.md README.md Rakefile cbs.gemspec)
  spec.files += Dir.glob("lib/**/*.rb")
  spec.files += Dir.glob("spec/**/*")
  spec.homepage = 'https://github.com/andrewpthorp/cbs'
  spec.license = 'MIT'
  spec.name = 'cbs'
  spec.require_paths = ['lib']
  spec.required_rubygems_version = '>= 1.3.5'
  spec.summary = "Ruby toolkit for working with the CBS Sports API"
  spec.test_files = Dir.glob("spec/**/*")
  spec.version = CBS::VERSION.dup
end
