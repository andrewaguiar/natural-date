# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'natural-date'

Gem::Specification.new do |spec|
  spec.name          = "natural-date"
  spec.version       = NaturalDateExpression::VERSION
  spec.authors       = ["Andrew S Aguiar"]
  spec.email         = ["andrewaguiar6@gmail.com"]
  spec.summary       = 'Converts natural language in date expressions'
  spec.description   = 'Natural language date/time parser in Ruby. natural-date can convert from plain text to date expressions symbolizing since single dates till recurrent dates'
  spec.homepage      = 'https://github.com/andrewaguiar/natural-date'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10.0"
end
