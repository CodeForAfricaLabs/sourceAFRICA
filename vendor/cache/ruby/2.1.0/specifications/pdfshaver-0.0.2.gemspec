# -*- encoding: utf-8 -*-
# stub: pdfshaver 0.0.2 ruby lib
# stub: ext/pdfium_ruby/extconf.rb

Gem::Specification.new do |s|
  s.name = "pdfshaver"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ted Han", "Nathan Stitt"]
  s.date = "2015-10-29"
  s.description = "  Shave pages off of PDFs as images.  PDFShaver makes iterating PDF pages easy \n  by wrapping Google Chrome's PDFium library in an enumerable interface.\n"
  s.email = "opensource@documentcloud.org"
  s.extensions = ["ext/pdfium_ruby/extconf.rb"]
  s.files = ["ext/pdfium_ruby/extconf.rb"]
  s.homepage = "https://www.documentcloud.org/opensource"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Shave pages off of PDFs as images"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, ["~> 10.4"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.9"])
      s.add_development_dependency(%q<minitest>, ["~> 5.5"])
      s.add_development_dependency(%q<fastimage>, ["~> 1.6"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, ["~> 10.4"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.9"])
      s.add_dependency(%q<minitest>, ["~> 5.5"])
      s.add_dependency(%q<fastimage>, ["~> 1.6"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, ["~> 10.4"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.9"])
    s.add_dependency(%q<minitest>, ["~> 5.5"])
    s.add_dependency(%q<fastimage>, ["~> 1.6"])
  end
end
