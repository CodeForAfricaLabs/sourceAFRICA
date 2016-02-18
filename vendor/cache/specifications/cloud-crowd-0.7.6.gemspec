# -*- encoding: utf-8 -*-
# stub: cloud-crowd 0.7.6 ruby lib

Gem::Specification.new do |s|
  s.name = "cloud-crowd"
  s.version = "0.7.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeremy Ashkenas", "Ted Han", "Nathan Stitt"]
  s.date = "2015-10-28"
  s.description = "    The crowd, suddenly there where there was nothing before, is a mysterious and\n    universal phenomenon. A few people may have been standing together -- five, ten\n    or twelve, nor more; nothing has been announced, nothing is expected. Suddenly\n    everywhere is black with people and more come streaming from all sides as though\n    streets had only one direction.\n"
  s.email = "opensource@documentcloud.org"
  s.executables = ["crowd"]
  s.extra_rdoc_files = ["README"]
  s.files = ["README", "bin/crowd"]
  s.homepage = "http://wiki.github.com/documentcloud/cloud-crowd"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--title", "CloudCrowd | Parallel Processing for the Rest of Us", "--exclude", "test", "--main", "README", "--all"]
  s.rubyforge_project = "cloud-crowd"
  s.rubygems_version = "2.5.0"
  s.summary = "Parallel Processing for the Rest of Us"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0"])
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<active_model_serializers>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 1.1.7"])
      s.add_runtime_dependency(%q<rest-client>, [">= 1.4"])
      s.add_runtime_dependency(%q<thin>, [">= 1.2.4"])
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<faker>, [">= 0.3.1"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<machinist>, [">= 1.0.3"])
      s.add_development_dependency(%q<rack-test>, [">= 0.4.1"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.7"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<active_model_serializers>, [">= 0"])
      s.add_dependency(%q<json>, [">= 1.1.7"])
      s.add_dependency(%q<rest-client>, [">= 1.4"])
      s.add_dependency(%q<thin>, [">= 1.2.4"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<faker>, [">= 0.3.1"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<machinist>, [">= 1.0.3"])
      s.add_dependency(%q<rack-test>, [">= 0.4.1"])
      s.add_dependency(%q<mocha>, [">= 0.9.7"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<active_model_serializers>, [">= 0"])
    s.add_dependency(%q<json>, [">= 1.1.7"])
    s.add_dependency(%q<rest-client>, [">= 1.4"])
    s.add_dependency(%q<thin>, [">= 1.2.4"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<faker>, [">= 0.3.1"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<machinist>, [">= 1.0.3"])
    s.add_dependency(%q<rack-test>, [">= 0.4.1"])
    s.add_dependency(%q<mocha>, [">= 0.9.7"])
  end
end
