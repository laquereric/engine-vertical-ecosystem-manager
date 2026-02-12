# frozen_string_literal: true

require_relative "lib/magentic_market/verticals/version"

Gem::Specification.new do |spec|
  spec.name          = "magentic-market-verticals"
  spec.version       = MagenticMarket::Verticals::VERSION
  spec.authors       = ["Magentic Market"]
  spec.summary       = "Canonical vertical market definitions for the Magentic Market ecosystem"
  spec.description   = "Single source-of-truth for 7 verticals, 42 categories, ontology standards, " \
                        "and rayswarm gem mappings. Pure Ruby — no framework dependencies."
  spec.homepage      = "https://github.com/magentic-ecosystem/magentic-market-verticals"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.files         = Dir["lib/**/*.rb", "verticals/**/*.rb", "VERSION", "LICENSE.txt"]
  spec.require_paths = ["lib"]
end
