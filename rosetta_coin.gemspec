# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rosetta_coin/version'

Gem::Specification.new do |gem|
  gem.name          = "rosetta_coin"
  gem.version       = RosettaCoin::VERSION
  gem.authors       = ["Dennis de Reus"]
  gem.email         = ["dennisdereus@gmail.com"]
  gem.description   = %q{Converts exported bank transactions to various formats}
  gem.summary       = %q{Bank transaction conversion tool}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
