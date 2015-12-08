# -*- encoding: utf-8 -*-
# stub: sunspot_matchers 2.2.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "sunspot_matchers"
  s.version = "2.2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Joseph Palermo"]
  s.date = "2015-07-29"
  s.description = "These matchers and assertions allow you to test what is happening inside the Sunspot Search DSL blocks"
  s.email = []
  s.homepage = "https://github.com/pivotal/sunspot_matchers"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "RSpec matchers and Test::Unit assertions for testing Sunspot"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<sunspot>, ["~> 2.2.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<sunspot>, ["~> 2.2.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<sunspot>, ["~> 2.2.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
