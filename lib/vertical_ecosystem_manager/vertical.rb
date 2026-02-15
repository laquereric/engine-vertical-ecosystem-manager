# frozen_string_literal: true

module VerticalEcosystemManager
  class Vertical
    attr_reader :slug, :name, :description, :icon, :ontology_standards, :categories

    def initialize(slug:, name:, description:, icon:, ontology_standards: [], categories: [])
      @slug = slug.to_s.freeze
      @name = name.to_s.freeze
      @description = description.to_s.freeze
      @icon = icon.to_s.freeze
      @ontology_standards = ontology_standards.freeze
      @categories = categories.freeze
      freeze
    end

    def to_h
      {
        slug: slug,
        name: name,
        description: description,
        icon: icon,
        ontology_standards: ontology_standards.map(&:to_h),
        categories: categories.map(&:to_h)
      }
    end
  end
end
