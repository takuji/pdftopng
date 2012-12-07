# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pdftopng/version'

Gem::Specification.new do |gem|
  gem.name          = "pdftopng"
  gem.version       = PdfToPng::VERSION
  gem.authors       = ["Takuji Shimokawa"]
  gem.email         = ["takuji.shimokawa@gmail.com"]
  gem.description   = %q{A tool to convert a PDF file into a set of PNG files}
  gem.summary       = %q{PDF to PNG converter}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
