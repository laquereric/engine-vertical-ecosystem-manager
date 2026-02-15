# frozen_string_literal: true

module VerticalEcosystemManager
  class RayswarmMapping
    attr_reader :gem_name, :category_slug, :vertical_slug, :description

    def initialize(gem_name:, category_slug:, vertical_slug:, description:)
      @gem_name = gem_name.to_s.freeze
      @category_slug = category_slug.to_s.freeze
      @vertical_slug = vertical_slug.to_s.freeze
      @description = description.to_s.freeze
      freeze
    end

    def to_h
      {
        gem_name: gem_name,
        category_slug: category_slug,
        vertical_slug: vertical_slug,
        description: description
      }
    end
  end
end
