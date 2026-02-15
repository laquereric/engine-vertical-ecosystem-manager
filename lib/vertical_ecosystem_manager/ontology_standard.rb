# frozen_string_literal: true

module VerticalEcosystemManager
  class OntologyStandard
    attr_reader :name, :full_name, :iri, :governance_body

    def initialize(name:, full_name:, iri:, governance_body:)
      @name = name.to_s.freeze
      @full_name = full_name.to_s.freeze
      @iri = iri.to_s.freeze
      @governance_body = governance_body.to_s.freeze
      freeze
    end

    def to_h
      {
        name: name,
        full_name: full_name,
        iri: iri,
        governance_body: governance_body
      }
    end
  end
end
