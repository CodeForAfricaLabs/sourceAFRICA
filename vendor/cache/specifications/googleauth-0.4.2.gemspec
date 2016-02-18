# -*- encoding: utf-8 -*-
# stub: googleauth 0.4.2 ruby lib

Gem::Specification.new do |s|
  s.name = "googleauth"
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tim Emiola"]
  s.date = "2015-08-06"
  s.description = "   Allows simple authorization for accessing Google APIs.\n   Provide support for Application Default Credentials, as described at\n   https://developers.google.com/accounts/docs/application-default-credentials\n"
  s.email = "temiola@google.com"
  s.homepage = "https://github.com/google/google-auth-library-ruby"
  s.licenses = ["Apache-2.0"]
  s.rubygems_version = "2.5.0"
  s.summary = "Google Auth Library for Ruby"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.9"])
      s.add_runtime_dependency(%q<logging>, ["~> 2.0"])
      s.add_runtime_dependency(%q<jwt>, ["~> 1.4"])
      s.add_runtime_dependency(%q<memoist>, ["~> 0.12"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.11"])
      s.add_runtime_dependency(%q<signet>, ["~> 0.6"])
      s.add_development_dependency(%q<bundler>, ["~> 1.9"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.9"])
      s.add_development_dependency(%q<coveralls>, ["~> 0.7"])
      s.add_development_dependency(%q<fakefs>, ["~> 0.6"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.30"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.9"])
      s.add_dependency(%q<logging>, ["~> 2.0"])
      s.add_dependency(%q<jwt>, ["~> 1.4"])
      s.add_dependency(%q<memoist>, ["~> 0.12"])
      s.add_dependency(%q<multi_json>, ["~> 1.11"])
      s.add_dependency(%q<signet>, ["~> 0.6"])
      s.add_dependency(%q<bundler>, ["~> 1.9"])
      s.add_dependency(%q<simplecov>, ["~> 0.9"])
      s.add_dependency(%q<coveralls>, ["~> 0.7"])
      s.add_dependency(%q<fakefs>, ["~> 0.6"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rubocop>, ["~> 0.30"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.9"])
    s.add_dependency(%q<logging>, ["~> 2.0"])
    s.add_dependency(%q<jwt>, ["~> 1.4"])
    s.add_dependency(%q<memoist>, ["~> 0.12"])
    s.add_dependency(%q<multi_json>, ["~> 1.11"])
    s.add_dependency(%q<signet>, ["~> 0.6"])
    s.add_dependency(%q<bundler>, ["~> 1.9"])
    s.add_dependency(%q<simplecov>, ["~> 0.9"])
    s.add_dependency(%q<coveralls>, ["~> 0.7"])
    s.add_dependency(%q<fakefs>, ["~> 0.6"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rubocop>, ["~> 0.30"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
  end
end
