require_relative 'lib/identity/version'

Gem::Specification.new do |spec|
  spec.name        = 'identity'
  spec.version     = Identity::VERSION
  spec.authors     = ['Gustavo Warmling Teixeira']
  spec.email       = ['gustavowt@gmail.com']
  spec.homepage    = 'https://github.com/gustavowt/identity'
  spec.summary     = 'Devise boilerplate'
  spec.description = 'Devise boilerplate'
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'rails', '>= 7.0.4.3'
end
