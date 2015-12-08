# -*- encoding: utf-8 -*-
# stub: minitest-spec-rails 5.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "minitest-spec-rails"
  s.version = "5.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ken Collins"]
  s.date = "2015-09-07"
  s.description = "The minitest-spec-rails gem makes it easy to use the MiniTest::Spec DSL within your existing Rails 3 or 4 test suite."
  s.email = ["ken@metaskills.net"]
  s.homepage = "http://github.com/metaskills/minitest-spec-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Make Rails Use MiniTest::Spec!"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest>, ["~> 5.0"])
      s.add_runtime_dependency(%q<rails>, [">= 4.1"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<minitest>, ["~> 5.0"])
      s.add_dependency(%q<rails>, [">= 4.1"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 5.0"])
    s.add_dependency(%q<rails>, [">= 4.1"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
