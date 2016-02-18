# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby-debug-passenger/version"

Gem::Specification.new do |s|
  s.name        = "ruby-debug-passenger"
  s.version     = RubyDebugPassenger::VERSION
  s.authors     = ["Dave James Miller"]
  s.email       = ["dave@davejamesmiller.com"]
  s.homepage    = "https://github.com/davejamesmiller/ruby-debug-passenger"
  s.summary     = %q{Adds a 'rake debug' task to Rails to restart Phusion Passenger with a debugger connected}
  s.description = <<-EOF
    Adds an initializer that loads and starts the debugger, and a 'rake debug'
    task that tells Phusion Passenger to restart with debugging enabled. This
    makes it possible to do interactive debugging when using the Phusion
    Passenger Apache module - it does not require the standalone server.
  EOF
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
