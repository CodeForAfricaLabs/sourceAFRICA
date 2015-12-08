# -*- encoding: utf-8 -*-
# stub: vcr 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "vcr"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Myron Marston"]
  s.date = "2015-11-01"
  s.description = "Record your test suite's HTTP interactions and replay them during future test runs for fast, deterministic, accurate tests."
  s.email = ["myron.marston@gmail.com"]
  s.homepage = "http://vcr.github.io/vcr"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Record your test suite's HTTP interactions and replay them during future test runs for fast, deterministic, accurate tests."

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<test-unit>, ["~> 3.1.4"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<pry>, ["~> 0.9"])
      s.add_development_dependency(%q<pry-doc>, ["~> 0.6"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, ["~> 0.4"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rack>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, ["~> 2.0.2"])
      s.add_development_dependency(%q<aruba>, ["~> 0.5.3"])
      s.add_development_dependency(%q<faraday>, [">= 0"])
      s.add_development_dependency(%q<httpclient>, [">= 0"])
      s.add_development_dependency(%q<excon>, [">= 0"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
      s.add_development_dependency(%q<multi_json>, [">= 0"])
      s.add_development_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<typhoeus>, [">= 0"])
      s.add_development_dependency(%q<patron>, [">= 0"])
      s.add_development_dependency(%q<em-http-request>, [">= 0"])
      s.add_development_dependency(%q<curb>, [">= 0"])
      s.add_development_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_development_dependency(%q<relish>, [">= 0"])
      s.add_development_dependency(%q<mime-types>, [">= 0"])
      s.add_development_dependency(%q<sinatra>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<test-unit>, ["~> 3.1.4"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<pry>, ["~> 0.9"])
      s.add_dependency(%q<pry-doc>, ["~> 0.6"])
      s.add_dependency(%q<codeclimate-test-reporter>, ["~> 0.4"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rack>, [">= 0"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<cucumber>, ["~> 2.0.2"])
      s.add_dependency(%q<aruba>, ["~> 0.5.3"])
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<httpclient>, [">= 0"])
      s.add_dependency(%q<excon>, [">= 0"])
      s.add_dependency(%q<timecop>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<typhoeus>, [">= 0"])
      s.add_dependency(%q<patron>, [">= 0"])
      s.add_dependency(%q<em-http-request>, [">= 0"])
      s.add_dependency(%q<curb>, [">= 0"])
      s.add_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_dependency(%q<relish>, [">= 0"])
      s.add_dependency(%q<mime-types>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<test-unit>, ["~> 3.1.4"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<pry>, ["~> 0.9"])
    s.add_dependency(%q<pry-doc>, ["~> 0.6"])
    s.add_dependency(%q<codeclimate-test-reporter>, ["~> 0.4"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rack>, [">= 0"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<cucumber>, ["~> 2.0.2"])
    s.add_dependency(%q<aruba>, ["~> 0.5.3"])
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<httpclient>, [">= 0"])
    s.add_dependency(%q<excon>, [">= 0"])
    s.add_dependency(%q<timecop>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<typhoeus>, [">= 0"])
    s.add_dependency(%q<patron>, [">= 0"])
    s.add_dependency(%q<em-http-request>, [">= 0"])
    s.add_dependency(%q<curb>, [">= 0"])
    s.add_dependency(%q<yajl-ruby>, [">= 0"])
    s.add_dependency(%q<relish>, [">= 0"])
    s.add_dependency(%q<mime-types>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
  end
end
