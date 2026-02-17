# frozen_string_literal: true

require_relative "lib/vertical_ecosystem_manager/version"

Gem::Specification.new do |spec|
  spec.name          = "vertical-ecosystem-manager"
  spec.version       = VerticalEcosystemManager::VERSION
  spec.authors       = ["Eric Laquer"]
  spec.summary       = "Canonical vertical market definitions for the ecosystem"
  spec.description   = "Single source-of-truth for 7 verticals, 42 categories, ontology standards, " \
                        "and rayswarm gem mappings."
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.files         = Dir["{app,config,db,lib}/**/*", "verticals/**/*.rb", "VERSION", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  spec.add_dependency "view_component"
end
