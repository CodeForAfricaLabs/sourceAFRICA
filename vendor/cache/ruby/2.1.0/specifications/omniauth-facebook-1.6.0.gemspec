# -*- encoding: utf-8 -*-
# stub: omniauth-facebook 1.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-facebook"
  s.version = "1.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mark Dodwell", "Josef \u{160}im\u{e1}nek"]
  s.date = "2014-01-11"
  s.email = ["mark@madeofcode.com", "retro@ballgag.cz"]
  s.homepage = "https://github.com/mkdynamic/omniauth-facebook"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.3"
  s.summary = "Facebook OAuth2 Strategy for OmniAuth"

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth-oauth2>, ["~> 1.1"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<omniauth-oauth2>, ["~> 1.1"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<omniauth-oauth2>, ["~> 1.1"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
