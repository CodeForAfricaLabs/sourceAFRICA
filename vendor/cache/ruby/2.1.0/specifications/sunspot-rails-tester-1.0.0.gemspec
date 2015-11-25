# -*- encoding: utf-8 -*-
# stub: sunspot-rails-tester 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sunspot-rails-tester"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Justin Ko"]
  s.date = "2013-04-16"
  s.description = "Enable sunspot during testing for *real* integration tests"
  s.email = "jko170@gmail.com"
  s.homepage = "https://github.com/justinko/sunspot-rails-tester"
  s.rubygems_version = "2.4.8"
  s.summary = "Stub sunspot when you want, and enable it when you want"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sunspot_rails>, [">= 1.2"])
      s.add_runtime_dependency(%q<sunspot_solr>, [">= 1.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<sunspot_rails>, [">= 1.2"])
      s.add_dependency(%q<sunspot_solr>, [">= 1.2"])
      s.add_dependency(%q<rspec>, ["~> 2.5"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<sunspot_rails>, [">= 1.2"])
    s.add_dependency(%q<sunspot_solr>, [">= 1.2"])
    s.add_dependency(%q<rspec>, ["~> 2.5"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
