# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = 'omniauth-inspire9'
  spec.version       = '0.0.1'
  spec.authors       = 'Pat Allan'
  spec.email         = 'pat@freelancing-gods.com'
  spec.summary       = %q{OmniAuth client library for inspire9.com}
  spec.description   = %q{An OmniAuth client libary for Inspire9's identity server.}
  spec.homepage      = 'https://github.com/inspire9/omniauth-inspire9'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
