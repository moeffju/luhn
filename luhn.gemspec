# -*- encoding: utf-8 -*-
require File.expand_path('../lib/luhn/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matthias Bauer", "Ben Rexin"]
  gem.email         = ["moeffju@moeffju.net", "salzig@notsitz.info"]
  gem.description   = %q{Adds methods to Fixnum and String to generate and validate Luhn check digits, e.g. for credit card numbers, civic numbers, some account numbers etc. More info: https://en.wikipedia.org/wiki/Luhn_algorithm}
  gem.summary       = %q{Adds methods to Fixnum and String to generate and validate Luhn check digits}
  gem.homepage      = "https://github.com/moeffju/luhn"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "moeffju-luhn"
  gem.require_paths = ["lib"]
  gem.version       = Luhn::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
