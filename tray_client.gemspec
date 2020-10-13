$:.push File.expand_path("../lib", __FILE__)

# require 'tray_client/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tray_client"
  s.authors     = ["Raí Gondim"]
  s.email       = ["raicg2@gmail.com"]
  s.version     = '0.1.0'
  s.homepage    = "https://www.github.com/raicg/tray_client"
  s.summary     = "Ruby client for tray.com.br API"
  s.description = "Ruby client for tray.com.br API"
  s.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]
  s.licenses    = ['MIT']
  s.required_ruby_version = '~> 2.2'

  s.add_dependency 'rails', '>=3.0.0'

  s.add_development_dependency 'rspec-rails', '3.9.0'
end
