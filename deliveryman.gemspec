# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deliveryman/version'

Gem::Specification.new do |gem|
  gem.name          = "deliveryman"
  gem.version       = Deliveryman::VERSION
  gem.authors       = ["Akihiro Matsumura"]
  gem.email         = ["matsumura.aki@gmail.com"]
  gem.description   = %q{Simple Mail Delivery Man}
  gem.summary       = %q{Simple Mail Delivery Man}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "actionmailer"
end
