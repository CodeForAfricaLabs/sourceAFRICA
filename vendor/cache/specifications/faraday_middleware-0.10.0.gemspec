# -*- encoding: utf-8 -*-
# stub: faraday_middleware 0.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "faraday_middleware"
  s.version = "0.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Erik Michaels-Ober", "Wynn Netherland"]
  s.date = "2015-07-07"
  s.description = "Various middleware for Faraday"
  s.email = ["sferik@gmail.com", "wynn.netherland@gmail.com"]
  s.homepage = "https://github.com/lostisland/faraday_middleware"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.0"
  s.summary = "Various middleware for Faraday"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["< 0.10", ">= 0.7.4"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<faraday>, ["< 0.10", ">= 0.7.4"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<faraday>, ["< 0.10", ">= 0.7.4"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
