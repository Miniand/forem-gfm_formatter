# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "forem-gfm_formatter"
  s.version     = '1.0.0'
  s.authors     = ["Nicholas Rutherford", "Michael Alexander"]
  s.email       = ["nick.rutherford@gmail.com", "beefsack@gmail.com"]
  s.homepage    = "https://github.com/Miniand/forem-gfm_formatter"
  s.summary     = %q{Redcarpet GitHub Flavored Markdown formatting for forem posts}
  s.description = %q{Replaces the forem Rails engine's default formatting with Redcarpet GitHub Flavored Markdown.  Based on forem-markdown_formatter by Nicholas Rutherford.}

  s.rubyforge_project = "forem-gfm_formatter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_runtime_dependency 'redcarpet', '~> 2.0.1'
  s.add_runtime_dependency "forem"
end
