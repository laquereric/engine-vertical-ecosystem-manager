# frozen_string_literal: true

module MagenticMarket
  module Verticals
    module Data
      module Industrial
        ONTOLOGY_STANDARDS = [
          OntologyStandard.new(
            name: "ISA-95",
            full_name: "International Society of Automation Standard 95",
            iri: "https://www.isa.org/isa95/",
            governance_body: "ISA"
          ),
          OntologyStandard.new(
            name: "IOF",
            full_name: "Industrial Ontologies Foundry",
            iri: "https://www.industrialontologies.org/",
            governance_body: "OAGi"
          ),
        ].freeze

        CATEGORIES = [
          Category.new(
            slug: "predictive_quality",
            name: "Predictive Quality",
            description: "Predictive quality control and defect prevention",
            vertical_slug: "industrial",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-predictive-quality",
                category_slug: "predictive_quality",
                vertical_slug: "industrial",
                description: "Multi-agent predictive quality control swarm"
              ),
            ]
          ),
          Category.new(
            slug: "production_optimization",
            name: "Production Optimization",
            description: "Production scheduling and optimization",
            vertical_slug: "industrial",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-production-scheduling",
                category_slug: "production_optimization",
                vertical_slug: "industrial",
                description: "Multi-agent production scheduling swarm"
              ),
            ]
          ),
          Category.new(
            slug: "supply_chain",
            name: "Supply Chain",
            description: "Supply chain optimization and logistics",
            vertical_slug: "industrial",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-supply-chain",
                category_slug: "supply_chain",
                vertical_slug: "industrial",
                description: "Multi-agent supply chain optimization swarm"
              ),
            ]
          ),
          Category.new(
            slug: "robotics",
            name: "Robotics",
            description: "Industrial robotics coordination and control",
            vertical_slug: "industrial",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-industrial-robotics",
                category_slug: "robotics",
                vertical_slug: "industrial",
                description: "Multi-agent industrial robotics swarm"
              ),
            ]
          ),
          Category.new(
            slug: "digital_twin",
            name: "Digital Twin",
            description: "Digital twin simulation and modeling",
            vertical_slug: "industrial",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-digital-twin",
                category_slug: "digital_twin",
                vertical_slug: "industrial",
                description: "Multi-agent digital twin simulation swarm"
              ),
            ]
          ),
          Category.new(
            slug: "equipment_health",
            name: "Equipment Health",
            description: "Equipment health monitoring and predictive maintenance",
            vertical_slug: "industrial",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-equipment-health",
                category_slug: "equipment_health",
                vertical_slug: "industrial",
                description: "Multi-agent equipment health monitoring swarm"
              ),
            ]
          ),
        ].freeze

        VERTICAL = Vertical.new(
          slug: "industrial",
          name: "Industrial",
          description: "Industrial manufacturing including quality, production, supply chain, robotics, digital twins, and equipment health",
          icon: "industry",
          ontology_standards: ONTOLOGY_STANDARDS,
          categories: CATEGORIES
        )
      end
    end
  end
end
