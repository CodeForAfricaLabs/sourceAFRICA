# -*- encoding: utf-8 -*-
# stub: sunspot_solr 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sunspot_solr"
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mat Brown", "Peer Allan", "Dmitriy Dzema", "Benjamin Krause", "Marcel de Graaf", "Brandon Keepers", "Peter Berkenbosch", "Brian Atkinson", "Tom Coleman", "Matt Mitchell", "Nathan Beyer", "Kieran Topping", "Nicolas Braem", "Jeremy Ashkenas", "Dylan Vaughn", "Brian Durand", "Sam Granieri", "Nick Zadrozny", "Jason Ronallo"]
  s.date = "2015-04-09"
  s.description = "    Sunspot::Solr provides a bundled Solr distribution for use with Sunspot.\n    Typical deployment environments will require more configuration, but this\n    distribution is well suited to development and testing.\n"
  s.email = ["mat@patch.com"]
  s.executables = ["sunspot-installer", "sunspot-solr"]
  s.files = ["bin/sunspot-installer", "bin/sunspot-solr"]
  s.homepage = "https://github.com/outoftime/sunspot/tree/master/sunspot_solr"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--webcvs=http://github.com/outoftime/sunspot/tree/master/%s", "--title", "Sunspot-Solr - Bundled Solr distribution for Sunspot - API Documentation", "--main", "README.rdoc"]
  s.rubyforge_project = "sunspot"
  s.rubygems_version = "2.5.0"
  s.summary = "Bundled Solr distribution for Sunspot"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 1.1"])
      s.add_development_dependency(%q<hanna>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["~> 1.1"])
      s.add_dependency(%q<hanna>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 1.1"])
    s.add_dependency(%q<hanna>, [">= 0"])
  end
end
