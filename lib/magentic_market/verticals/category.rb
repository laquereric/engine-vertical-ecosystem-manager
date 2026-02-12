# frozen_string_literal: true

module MagenticMarket
  module Verticals
    class Category
      attr_reader :slug, :name, :description, :vertical_slug, :rayswarm_mappings

      def initialize(slug:, name:, description:, vertical_slug:, rayswarm_mappings: [])
        @slug = slug.to_s.freeze
        @name = name.to_s.freeze
        @description = description.to_s.freeze
        @vertical_slug = vertical_slug.to_s.freeze
        @rayswarm_mappings = rayswarm_mappings.freeze
        freeze
      end

      def to_h
        {
          slug: slug,
          name: name,
          description: description,
          vertical_slug: vertical_slug,
          rayswarm_mappings: rayswarm_mappings.map(&:to_h)
        }
      end
    end
  end
end
