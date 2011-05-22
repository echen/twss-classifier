# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "twss-classifier/version"

Gem::Specification.new do |s|
  s.name        = "twss-classifier"
  s.version     = TwssClassifier::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Edwin Chen"]
  s.email       = ["hello@echen.me"]
  s.homepage    = "http://twss-classifier.heroku.com"
  s.summary     = %q{A TWSS Classifier.}
  s.description = %q{Determine whether a sentence has "That's what she said!" as a valid response.}

  s.rubyforge_project = "twss-classifier"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
