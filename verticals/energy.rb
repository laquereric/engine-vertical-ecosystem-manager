# frozen_string_literal: true

module MagenticMarket
  module Verticals
    module Data
      module Energy
        ONTOLOGY_STANDARDS = [
          OntologyStandard.new(
            name: "OSDU",
            full_name: "Open Subsurface Data Universe",
            iri: "https://osduforum.org/",
            governance_body: "The Open Group"
          ),
          OntologyStandard.new(
            name: "CIM",
            full_name: "Common Information Model",
            iri: "https://www.iec.ch/smartgrid/standards/",
            governance_body: "IEC"
          ),
          OntologyStandard.new(
            name: "OEO",
            full_name: "Open Energy Ontology",
            iri: "https://openenergy-platform.org/ontology/oeo/",
            governance_body: "Open Energy Platform"
          ),
        ].freeze

        CATEGORIES = [
          Category.new(
            slug: "exploration",
            name: "Exploration",
            description: "Subsurface exploration and seismic analysis",
            vertical_slug: "energy",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-subsurface-exploration",
                category_slug: "exploration",
                vertical_slug: "energy",
                description: "Multi-agent subsurface exploration swarm"
              ),
            ]
          ),
          Category.new(
            slug: "production",
            name: "Production",
            description: "Reservoir optimization and production management",
            vertical_slug: "energy",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-reservoir-optimization",
                category_slug: "production",
                vertical_slug: "energy",
                description: "Multi-agent reservoir optimization swarm"
              ),
            ]
          ),
          Category.new(
            slug: "grid_management",
            name: "Grid Management",
            description: "Electrical grid management and optimization",
            vertical_slug: "energy",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-grid-management",
                category_slug: "grid_management",
                vertical_slug: "energy",
                description: "Multi-agent grid management swarm"
              ),
            ]
          ),
          Category.new(
            slug: "renewable_forecasting",
            name: "Renewable Forecasting",
            description: "Renewable energy generation forecasting",
            vertical_slug: "energy",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-renewable-forecasting",
                category_slug: "renewable_forecasting",
                vertical_slug: "energy",
                description: "Multi-agent renewable energy forecasting swarm"
              ),
            ]
          ),
          Category.new(
            slug: "asset_management",
            name: "Asset Management",
            description: "Energy asset lifecycle management",
            vertical_slug: "energy",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-energy-assets",
                category_slug: "asset_management",
                vertical_slug: "energy",
                description: "Multi-agent energy asset management swarm"
              ),
            ]
          ),
          Category.new(
            slug: "energy_trading",
            name: "Energy Trading",
            description: "Commodity futures and energy trading",
            vertical_slug: "energy",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-commodity-futures",
                category_slug: "energy_trading",
                vertical_slug: "energy",
                description: "Multi-agent commodity futures trading swarm"
              ),
            ]
          ),
        ].freeze

        VERTICAL = Vertical.new(
          slug: "energy",
          name: "Energy",
          description: "Energy sector including exploration, production, grid management, renewables, asset management, and trading",
          icon: "bolt",
          ontology_standards: ONTOLOGY_STANDARDS,
          categories: CATEGORIES
        )
      end
    end
  end
end
