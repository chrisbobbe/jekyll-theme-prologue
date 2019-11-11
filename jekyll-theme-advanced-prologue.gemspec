# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-advanced-prologue"
  spec.version       = "0.0.2"
  spec.authors       = ["HTML5 UP", "Chris Bobbe","Fernando Ariznavarreta"]
  spec.email         = []

  spec.summary       = %q{A modified version of the Jekyll Prologue theme by HTML5 UP.}
  spec.description   = "A modified version of the Jekyll Prologue theme by ChrisBobbe."
  spec.homepage      = "https://github.com/ariznaf/jekyll-theme-advanced-prologue.git"
  spec.license       = "CC-BY-3.0"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|_config.yml|404.html|LICENSE|README)}i) }

  spec.add_development_dependency "jekyll", ">= 3.3"
  spec.add_development_dependency "bundler", ">= 1.12"
end
