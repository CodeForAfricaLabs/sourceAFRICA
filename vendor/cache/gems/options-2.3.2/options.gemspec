## options.gemspec
#

Gem::Specification::new do |spec|
  spec.name = "options"
  spec.version = "2.3.2"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "options"
  spec.description = "parse options from *args cleanly"
  spec.license = "same as ruby's"

  spec.files =
["README",
 "README.erb",
 "Rakefile",
 "lib",
 "lib/options.rb",
 "options.gemspec",
 "samples",
 "samples/a.rb",
 "samples/b.rb",
 "samples/c.rb",
 "samples/d.rb",
 "spec",
 "spec/options_spec.rb",
 "spec/spec_helper.rb"]

  spec.executables = []
  
  spec.require_path = "lib"

  spec.test_files = nil

  

  spec.extensions.push(*[])

  spec.rubyforge_project = "codeforpeople"
  spec.author = "Ara T. Howard"
  spec.email = "ara.t.howard@gmail.com"
  spec.homepage = "https://github.com/ahoward/options"
end
