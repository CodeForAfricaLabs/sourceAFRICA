Gem::Specification.new do |s|
  s.name      = 'pdftailor'
  s.version   = '0.0.5'
  s.date      = '2014-01-19'

  s.summary     = "Stitching and unstitching for PDFs"
  s.description = <<-EOS
    Stitching and unstitching for PDFs.  A java library delivered via ruby out of convenience.
  EOS

  s.authors           = ['Ted Han']
  s.email             = 'opensource@documentcloud.org'
  s.homepage          = 'http://documentcloud.github.io/pdftailor'

  s.require_paths     = ['lib']
  s.executables       = ['pdftailor']

  s.files = Dir['jars/*', 'lib/**/*', 'bin/*', 'java/**/*', 'pdftailor.gemspec']
  s.license = "MIT"
end