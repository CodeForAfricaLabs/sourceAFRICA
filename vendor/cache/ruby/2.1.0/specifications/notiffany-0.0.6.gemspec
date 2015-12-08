# -*- encoding: utf-8 -*-
# stub: notiffany 0.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "notiffany"
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Cezary Baginski"]
  s.date = "2015-02-19"
  s.description = "Single wrapper for most popular notification libraries"
  s.email = ["cezary@chronomantic.net"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.3"
  s.summary = "Notifier library (extracted from Guard project)"

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nenv>, ["~> 0.1"])
      s.add_runtime_dependency(%q<shellany>, ["~> 0.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
    else
      s.add_dependency(%q<nenv>, ["~> 0.1"])
      s.add_dependency(%q<shellany>, ["~> 0.0"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
    end
  else
    s.add_dependency(%q<nenv>, ["~> 0.1"])
    s.add_dependency(%q<shellany>, ["~> 0.0"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
  end
end
