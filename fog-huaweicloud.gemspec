# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fog/huaweicloud/version'

Gem::Specification.new do |spec|
  spec.name          = 'fog-huaweicloud'
  spec.version       = Fog::Huaweicloud::VERSION
  spec.authors       = ['Qinsi Deng']
  spec.email         = ['dengqinsi@sina.com']

  spec.summary       = 'Fog provider for Huawei Cloud Services.'
  spec.description   = 'As a FOG provider, fog-huaweicloud support huawei cloud ECS.'
  spec.homepage      = 'https://github.com/dengqinsi/fog-huaweicloud'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'rubocop', '~> 0.40.0'
  spec.add_development_dependency 'mime-types', '~> 2.6', '>= 2.6.2'
  spec.add_development_dependency 'pry-nav'

  spec.add_dependency 'fog-core',  '~> 1.27'
  spec.add_dependency 'fog-json',  '~> 1.0'
  spec.add_dependency 'ipaddress', '~> 0.8'
  spec.add_dependency 'xml-simple', '~> 1.1'
end
