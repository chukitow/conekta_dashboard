$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "conekta_dashboard/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "conekta_dashboard"
  s.version     = ConektaDashboard::VERSION
  s.authors     = ["Ivan Velasquez"]
  s.email       = ["ivan.velasquez.rios@gmail.com"]
  s.homepage    = "https://github.com/chukitow/conekta_dashboard"
  s.summary     = "Rails engine gem to manage conekta API"
  s.description = "ConektaDashboard is a rails engine that helps to visualize https://admin.conekta.io/ from our rails application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "conekta", "~> 0.5.7"
  s.add_dependency "sass-rails", ">= 3.2"
  s.add_dependency "bootstrap-sass", "~> 3.3.6"
  s.add_dependency 'jquery-rails',    '~> 4.1'
  s.add_dependency 'money',    '~> 6.7.1'
  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry-rails"
end
