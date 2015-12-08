# -*- encoding: utf-8 -*-
# stub: active_model_serializers 0.9.3 ruby lib

Gem::Specification.new do |s|
  s.name = "active_model_serializers"
  s.version = "0.9.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jos\u{e9} Valim", "Yehuda Katz", "Santiago Pastorino"]
  s.date = "2015-01-21"
  s.description = "Making it easy to serialize models for client-side use"
  s.email = ["jose.valim@gmail.com", "wycats@gmail.com", "santiago@wyeworks.com"]
  s.homepage = "https://github.com/rails-api/active_model_serializers"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.4.3"
  s.summary = "Bringing consistency and object orientation to model serialization. Works great for client-side MVC frameworks!"

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, [">= 3.2"])
      s.add_development_dependency(%q<rails>, [">= 3.2"])
    else
      s.add_dependency(%q<activemodel>, [">= 3.2"])
      s.add_dependency(%q<rails>, [">= 3.2"])
    end
  else
    s.add_dependency(%q<activemodel>, [">= 3.2"])
    s.add_dependency(%q<rails>, [">= 3.2"])
  end
end
