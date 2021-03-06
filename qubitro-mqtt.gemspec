#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "qubitro-mqtt/version"

Gem::Specification.new do |gem|
  gem.name        = 'qubitro-mqtt'
  gem.version     = MQTT::VERSION
  gem.author      = 'Qubitro'
  gem.email       = 'social@qubitro.com'
  gem.homepage    = 'https://github.com/qubitro/mqtt-client-ruby'
  gem.summary     = 'Implementation of the MQTT protocol for Qubitro IoT platform. More info: docs.qubitro.com'
  gem.description = 'Modern Ruby library that implements the MQTT protocol, a lightweight protocol for publish/subscribe messaging.'
  gem.license     = 'MIT' if gem.respond_to?(:license=)

  gem.rubyforge_project = 'qubitro-mqtt'

  gem.files         = %w(README.md LICENSE.md NEWS.md) + Dir.glob('lib/**/*.rb')
  gem.test_files    = Dir.glob('spec/*_spec.rb')
  gem.executables   = %w()
  gem.require_paths = %w(lib)

  if Gem.ruby_version > Gem::Version.new('2.0')
    gem.add_development_dependency 'bundler',  '>= 1.11.2'
    gem.add_development_dependency 'rake',     '>= 13.0.1'
    gem.add_development_dependency 'yard',     '>= 0.9.20'
    gem.add_development_dependency 'rspec',    '>= 3.9.0'
    gem.add_development_dependency 'simplecov','>= 0.18.5'
    gem.add_development_dependency 'rubocop',  '~> 0.80.1'
  else
    raise "#{Gem.ruby_version} is an unsupported version of ruby"
  end
end
