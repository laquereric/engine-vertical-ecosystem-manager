# frozen_string_literal: true

module MagenticMarket
  module Verticals
    module Data
      module Demographic
        ONTOLOGY_STANDARDS = [
          OntologyStandard.new(
            name: "Schema.org",
            full_name: "Schema.org Vocabulary",
            iri: "https://schema.org/",
            governance_body: "Schema.org Community"
          ),
          OntologyStandard.new(
            name: "FOAF",
            full_name: "Friend of a Friend",
            iri: "http://xmlns.com/foaf/0.1/",
            governance_body: "FOAF Project"
          ),
          OntologyStandard.new(
            name: "vCard",
            full_name: "vCard Ontology",
            iri: "https://www.w3.org/TR/vcard-rdf/",
            governance_body: "W3C"
          ),
        ].freeze

        CATEGORIES = [
          Category.new(
            slug: "census_analysis",
            name: "Census Analysis",
            description: "Census data analysis and demographic profiling",
            vertical_slug: "demographic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-census-analysis",
                category_slug: "census_analysis",
                vertical_slug: "demographic",
                description: "Multi-agent census analysis swarm"
              ),
            ]
          ),
          Category.new(
            slug: "economic_forecasting",
            name: "Economic Forecasting",
            description: "Economic forecasting and modeling",
            vertical_slug: "demographic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-economic-forecasting",
                category_slug: "economic_forecasting",
                vertical_slug: "demographic",
                description: "Multi-agent economic forecasting swarm"
              ),
            ]
          ),
          Category.new(
            slug: "social_programs",
            name: "Social Programs",
            description: "Social program analysis and optimization",
            vertical_slug: "demographic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-social-programs",
                category_slug: "social_programs",
                vertical_slug: "demographic",
                description: "Multi-agent social programs analysis swarm"
              ),
            ]
          ),
          Category.new(
            slug: "public_health",
            name: "Public Health",
            description: "Public health surveillance and response",
            vertical_slug: "demographic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-public-health",
                category_slug: "public_health",
                vertical_slug: "demographic",
                description: "Multi-agent public health analytics swarm"
              ),
            ]
          ),
          Category.new(
            slug: "policy_simulation",
            name: "Policy Simulation",
            description: "Policy simulation and impact analysis",
            vertical_slug: "demographic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-policy-simulation",
                category_slug: "policy_simulation",
                vertical_slug: "demographic",
                description: "Multi-agent policy simulation swarm"
              ),
            ]
          ),
          Category.new(
            slug: "survey_analysis",
            name: "Survey Analysis",
            description: "Survey data analysis and insights",
            vertical_slug: "demographic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-survey-analysis",
                category_slug: "survey_analysis",
                vertical_slug: "demographic",
                description: "Multi-agent survey analysis swarm"
              ),
            ]
          ),
        ].freeze

        VERTICAL = Vertical.new(
          slug: "demographic",
          name: "Demographic",
          description: "Demographic analytics including census, economic forecasting, social programs, public health, policy simulation, and surveys",
          icon: "users",
          ontology_standards: ONTOLOGY_STANDARDS,
          categories: CATEGORIES
        )
      end
    end
  end
end
