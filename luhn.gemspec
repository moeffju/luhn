# -*- encoding: utf-8 -*-
require File.expand_path('../lib/luhn/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matthias Bauer"]
  gem.email         = ["moeffju@moeffju.net"]
  gem.description   = %q{Adds methods to Fixnum and String to generate and validate Luhn checksums}
  gem.summary       = %q{Adds methods to Fixnum and String to generate and validate Luhn checksums}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "luhn"
  gem.require_paths = ["lib"]
  gem.version       = Luhn::VERSION
end
