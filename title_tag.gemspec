$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "title_tag/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "title_tag"
  s.version     = TitleTag::VERSION
  s.authors     = ["Robert Starsi"]
  s.email       = ["title_tag@klevo.sk"]
  s.homepage    = "http://klevo.sk"
  s.summary     = "Set HTML title from within Rails views."
  s.description = "Set HTML title from within Rails views."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency "sqlite3"
end
