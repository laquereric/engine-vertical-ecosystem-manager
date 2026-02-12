# frozen_string_literal: true

module MagenticMarket
  module Verticals
    module Data
      module Healthcare
        ONTOLOGY_STANDARDS = [
          OntologyStandard.new(
            name: "HL7 FHIR",
            full_name: "Health Level Seven Fast Healthcare Interoperability Resources",
            iri: "https://www.hl7.org/fhir/",
            governance_body: "HL7 International"
          ),
          OntologyStandard.new(
            name: "SNOMED CT",
            full_name: "Systematized Nomenclature of Medicine — Clinical Terms",
            iri: "https://www.snomed.org/",
            governance_body: "SNOMED International"
          ),
          OntologyStandard.new(
            name: "LOINC",
            full_name: "Logical Observation Identifiers Names and Codes",
            iri: "https://loinc.org/",
            governance_body: "Regenstrief Institute"
          ),
        ].freeze

        CATEGORIES = [
          Category.new(
            slug: "clinical_decision_support",
            name: "Clinical Decision Support",
            description: "Evidence-based clinical decision support systems",
            vertical_slug: "healthcare",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-clinical-decisions",
                category_slug: "clinical_decision_support",
                vertical_slug: "healthcare",
                description: "Multi-agent clinical decision support swarm"
              ),
            ]
          ),
          Category.new(
            slug: "medical_imaging",
            name: "Medical Imaging",
            description: "Medical image analysis and diagnostics",
            vertical_slug: "healthcare",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-medical-imaging",
                category_slug: "medical_imaging",
                vertical_slug: "healthcare",
                description: "Multi-agent medical imaging analysis swarm"
              ),
            ]
          ),
          Category.new(
            slug: "claims_processing",
            name: "Claims Processing",
            description: "Healthcare claims processing and adjudication",
            vertical_slug: "healthcare",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-healthcare-claims",
                category_slug: "claims_processing",
                vertical_slug: "healthcare",
                description: "Multi-agent healthcare claims processing swarm"
              ),
            ]
          ),
          Category.new(
            slug: "drug_discovery",
            name: "Drug Discovery",
            description: "Pharmaceutical drug discovery and development",
            vertical_slug: "healthcare",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-drug-discovery",
                category_slug: "drug_discovery",
                vertical_slug: "healthcare",
                description: "Multi-agent drug discovery swarm"
              ),
            ]
          ),
          Category.new(
            slug: "patient_engagement",
            name: "Patient Engagement",
            description: "Patient engagement and experience optimization",
            vertical_slug: "healthcare",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-patient-engagement",
                category_slug: "patient_engagement",
                vertical_slug: "healthcare",
                description: "Multi-agent patient engagement swarm"
              ),
            ]
          ),
          Category.new(
            slug: "population_health",
            name: "Population Health",
            description: "Population health analytics and management",
            vertical_slug: "healthcare",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-population-health",
                category_slug: "population_health",
                vertical_slug: "healthcare",
                description: "Multi-agent population health analytics swarm"
              ),
            ]
          ),
        ].freeze

        VERTICAL = Vertical.new(
          slug: "healthcare",
          name: "Healthcare",
          description: "Healthcare services including clinical support, imaging, claims, drug discovery, patient engagement, and population health",
          icon: "heartbeat",
          ontology_standards: ONTOLOGY_STANDARDS,
          categories: CATEGORIES
        )
      end
    end
  end
end
