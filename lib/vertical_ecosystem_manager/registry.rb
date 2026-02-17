# frozen_string_literal: true

module VerticalEcosystemManager
  class Registry
    def initialize
      @verticals = {}
    end

    def register(vertical)
      @verticals[vertical.slug] = vertical
    end

    def all
      @verticals.values.freeze
    end

    def slugs
      @verticals.keys.freeze
    end

    def find(slug)
      @verticals.fetch(slug.to_s) do
        raise KeyError, "Unknown vertical: #{slug.inspect}. Valid slugs: #{slugs.join(', ')}"
      end
    end

    def categories
      all.flat_map(&:categories).freeze
    end

    def rayswarm_gems
      categories.flat_map(&:rayswarm_mappings).freeze
    end
  end
end
