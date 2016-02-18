# -*- encoding: utf-8 -*-
# stub: ruby-debug-passenger 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-debug-passenger"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dave James Miller"]
  s.date = "2013-08-13"
  s.description = "    Adds an initializer that loads and starts the debugger, and a 'rake debug'\n    task that tells Phusion Passenger to restart with debugging enabled. This\n    makes it possible to do interactive debugging when using the Phusion\n    Passenger Apache module - it does not require the standalone server.\n"
  s.email = ["dave@davejamesmiller.com"]
  s.homepage = "https://github.com/davejamesmiller/ruby-debug-passenger"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.0"
  s.summary = "Adds a 'rake debug' task to Rails to restart Phusion Passenger with a debugger connected"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version
end
