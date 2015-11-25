# -*- encoding: utf-8 -*-
# stub: jammit 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jammit"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeremy Ashkenas", "Ted Han", "Justin Reese"]
  s.date = "2015-10-28"
  s.description = "    Jammit is an industrial-strength asset packaging library for Rails,\n    providing both the CSS and JavaScript concatenation and compression that\n    you'd expect, as well as YUI Compressor and Closure Compiler compatibility,\n    ahead-of-time gzipping, built-in JavaScript template support, and optional\n    Data-URI / MHTML image embedding.\n"
  s.email = ["opensource@documentcloud.org"]
  s.executables = ["jammit"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md", "bin/jammit"]
  s.homepage = "http://documentcloud.github.com/jammit/"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--title", "Jammit", "--exclude", "test", "--main", "README.md", "--all"]
  s.rubygems_version = "2.4.8"
  s.summary = "Industrial-strength asset packaging for Rails."

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cssmin>, ["~> 1.0"])
      s.add_runtime_dependency(%q<jsmin>, ["~> 1.0"])
    else
      s.add_dependency(%q<cssmin>, ["~> 1.0"])
      s.add_dependency(%q<jsmin>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<cssmin>, ["~> 1.0"])
    s.add_dependency(%q<jsmin>, ["~> 1.0"])
  end
end
