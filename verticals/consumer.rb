# frozen_string_literal: true

module MagenticMarket
  module Verticals
    module Data
      module Consumer
        ONTOLOGY_STANDARDS = [
          OntologyStandard.new(
            name: "GS1",
            full_name: "Global Standards One",
            iri: "https://www.gs1.org/standards",
            governance_body: "GS1"
          ),
        ].freeze

        CATEGORIES = [
          Category.new(
            slug: "personalization",
            name: "Personalization",
            description: "Consumer personalization and recommendation engines",
            vertical_slug: "consumer",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-personalization",
                category_slug: "personalization",
                vertical_slug: "consumer",
                description: "Multi-agent personalization swarm"
              ),
            ]
          ),
          Category.new(
            slug: "pricing",
            name: "Pricing",
            description: "Dynamic pricing optimization",
            vertical_slug: "consumer",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-dynamic-pricing",
                category_slug: "pricing",
                vertical_slug: "consumer",
                description: "Multi-agent dynamic pricing swarm"
              ),
            ]
          ),
          Category.new(
            slug: "inventory",
            name: "Inventory",
            description: "Inventory optimization and demand forecasting",
            vertical_slug: "consumer",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-inventory-optimization",
                category_slug: "inventory",
                vertical_slug: "consumer",
                description: "Multi-agent inventory optimization swarm"
              ),
            ]
          ),
          Category.new(
            slug: "customer_analytics",
            name: "Customer Analytics",
            description: "Customer behavior analytics and segmentation",
            vertical_slug: "consumer",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-customer-analytics",
                category_slug: "customer_analytics",
                vertical_slug: "consumer",
                description: "Multi-agent customer analytics swarm"
              ),
            ]
          ),
          Category.new(
            slug: "retail_execution",
            name: "Retail Execution",
            description: "Retail execution and store operations",
            vertical_slug: "consumer",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-retail-execution",
                category_slug: "retail_execution",
                vertical_slug: "consumer",
                description: "Multi-agent retail execution swarm"
              ),
            ]
          ),
          Category.new(
            slug: "advertising",
            name: "Advertising",
            description: "Advertising optimization and campaign management",
            vertical_slug: "consumer",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-ad-optimization",
                category_slug: "advertising",
                vertical_slug: "consumer",
                description: "Multi-agent advertising optimization swarm"
              ),
            ]
          ),
        ].freeze

        VERTICAL = Vertical.new(
          slug: "consumer",
          name: "Consumer",
          description: "Consumer sector including personalization, pricing, inventory, analytics, retail execution, and advertising",
          icon: "shopping-cart",
          ontology_standards: ONTOLOGY_STANDARDS,
          categories: CATEGORIES
        )
      end
    end
  end
end
