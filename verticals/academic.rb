# frozen_string_literal: true

module MagenticMarket
  module Verticals
    module Data
      module Academic
        ONTOLOGY_STANDARDS = [
          OntologyStandard.new(
            name: "1EdTech",
            full_name: "1EdTech Technical Standards",
            iri: "https://www.1edtech.org/standards",
            governance_body: "1EdTech Consortium"
          ),
          OntologyStandard.new(
            name: "VIVO",
            full_name: "VIVO Ontology for Researcher Discovery",
            iri: "https://wiki.lyrasis.org/display/VIVODOC/",
            governance_body: "LYRASIS"
          ),
          OntologyStandard.new(
            name: "CERIF",
            full_name: "Common European Research Information Format",
            iri: "https://eurocris.org/cerif/",
            governance_body: "euroCRIS"
          ),
          OntologyStandard.new(
            name: "ORCID",
            full_name: "Open Researcher and Contributor ID",
            iri: "https://orcid.org/",
            governance_body: "ORCID Inc."
          ),
        ].freeze

        CATEGORIES = [
          Category.new(
            slug: "research_discovery",
            name: "Research Discovery",
            description: "Academic research discovery and literature analysis",
            vertical_slug: "academic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-research-discovery",
                category_slug: "research_discovery",
                vertical_slug: "academic",
                description: "Multi-agent research discovery swarm"
              ),
            ]
          ),
          Category.new(
            slug: "adaptive_learning",
            name: "Adaptive Learning",
            description: "Adaptive learning and personalized education",
            vertical_slug: "academic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-adaptive-learning",
                category_slug: "adaptive_learning",
                vertical_slug: "academic",
                description: "Multi-agent adaptive learning swarm"
              ),
            ]
          ),
          Category.new(
            slug: "student_success",
            name: "Student Success",
            description: "Student success prediction and intervention",
            vertical_slug: "academic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-student-success",
                category_slug: "student_success",
                vertical_slug: "academic",
                description: "Multi-agent student success analytics swarm"
              ),
            ]
          ),
          Category.new(
            slug: "curriculum_mapping",
            name: "Curriculum Mapping",
            description: "Curriculum design and competency mapping",
            vertical_slug: "academic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-curriculum-mapping",
                category_slug: "curriculum_mapping",
                vertical_slug: "academic",
                description: "Multi-agent curriculum mapping swarm"
              ),
            ]
          ),
          Category.new(
            slug: "library_services",
            name: "Library Services",
            description: "Library services and information retrieval",
            vertical_slug: "academic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-library-services",
                category_slug: "library_services",
                vertical_slug: "academic",
                description: "Multi-agent library services swarm"
              ),
            ]
          ),
          Category.new(
            slug: "institutional_analytics",
            name: "Institutional Analytics",
            description: "Institutional research and analytics",
            vertical_slug: "academic",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-institutional-analytics",
                category_slug: "institutional_analytics",
                vertical_slug: "academic",
                description: "Multi-agent institutional analytics swarm"
              ),
            ]
          ),
        ].freeze

        VERTICAL = Vertical.new(
          slug: "academic",
          name: "Academic",
          description: "Academic sector including research discovery, adaptive learning, student success, curriculum mapping, library services, and institutional analytics",
          icon: "graduation-cap",
          ontology_standards: ONTOLOGY_STANDARDS,
          categories: CATEGORIES
        )
      end
    end
  end
end
