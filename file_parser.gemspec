lib = File.expand_path('lib', __DIR__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'file_parser/version'

Gem::Specification.new do |spec|
  spec.name          = 'file_parser'
  spec.version       = FileParser::VERSION
  spec.authors       = ['Ahmad Albu-Eltyif']
  spec.email         = ['a.albueltyif@boundlessdrop.com']
  spec.summary       = 'Parser for different file types'
  spec.description   = 'Parses xls, xlsx, csv, txt file types'
  spec.homepage      = 'https://github.com/aeltyif/file_parser'
  spec.license       = 'MIT'

  spec.files = Dir.chdir(File.expand_path(__DIR__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
