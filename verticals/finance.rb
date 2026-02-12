# frozen_string_literal: true

module MagenticMarket
  module Verticals
    module Data
      module Finance
        ONTOLOGY_STANDARDS = [
          OntologyStandard.new(
            name: "FIBO",
            full_name: "Financial Industry Business Ontology",
            iri: "https://spec.edmcouncil.org/fibo/",
            governance_body: "EDM Council"
          ),
          OntologyStandard.new(
            name: "ACORD",
            full_name: "Association for Cooperative Operations Research and Development",
            iri: "https://www.acord.org/standards",
            governance_body: "ACORD"
          ),
          OntologyStandard.new(
            name: "FIB-DM",
            full_name: "Financial Industry Business Data Model",
            iri: "https://fib-dm.com/",
            governance_body: "FIB-DM Community"
          ),
        ].freeze

        CATEGORIES = [
          Category.new(
            slug: "trading",
            name: "Trading",
            description: "Algorithmic and quantitative trading strategies",
            vertical_slug: "finance",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-algorithmic-trading",
                category_slug: "trading",
                vertical_slug: "finance",
                description: "Multi-agent algorithmic trading swarm"
              ),
            ]
          ),
          Category.new(
            slug: "risk_management",
            name: "Risk Management",
            description: "Financial risk modeling and assessment",
            vertical_slug: "finance",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-financial-risk",
                category_slug: "risk_management",
                vertical_slug: "finance",
                description: "Multi-agent financial risk analysis swarm"
              ),
            ]
          ),
          Category.new(
            slug: "compliance",
            name: "Compliance",
            description: "Regulatory compliance, KYC, and AML",
            vertical_slug: "finance",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-kyc-aml-compliance",
                category_slug: "compliance",
                vertical_slug: "finance",
                description: "Multi-agent KYC/AML compliance swarm"
              ),
            ]
          ),
          Category.new(
            slug: "insurance",
            name: "Insurance",
            description: "Insurance claims processing and underwriting",
            vertical_slug: "finance",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-insurance-claims",
                category_slug: "insurance",
                vertical_slug: "finance",
                description: "Multi-agent insurance claims processing swarm"
              ),
            ]
          ),
          Category.new(
            slug: "wealth_management",
            name: "Wealth Management",
            description: "Wealth advisory and portfolio management",
            vertical_slug: "finance",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-wealth-advisory",
                category_slug: "wealth_management",
                vertical_slug: "finance",
                description: "Multi-agent wealth advisory swarm"
              ),
            ]
          ),
          Category.new(
            slug: "fraud_detection",
            name: "Fraud Detection",
            description: "Financial fraud detection and prevention",
            vertical_slug: "finance",
            rayswarm_mappings: [
              RayswarmMapping.new(
                gem_name: "rayswarm-fraud-detection",
                category_slug: "fraud_detection",
                vertical_slug: "finance",
                description: "Multi-agent fraud detection swarm"
              ),
            ]
          ),
        ].freeze

        VERTICAL = Vertical.new(
          slug: "finance",
          name: "Finance",
          description: "Financial services including trading, risk, compliance, insurance, wealth management, and fraud detection",
          icon: "chart-line",
          ontology_standards: ONTOLOGY_STANDARDS,
          categories: CATEGORIES
        )
      end
    end
  end
end
