# frozen_string_literal: true

require_relative "verticals/version"
require_relative "verticals/ontology_standard"
require_relative "verticals/rayswarm_mapping"
require_relative "verticals/category"
require_relative "verticals/vertical"
require_relative "verticals/registry"

require_relative "../../verticals/finance"
require_relative "../../verticals/healthcare"
require_relative "../../verticals/energy"
require_relative "../../verticals/industrial"
require_relative "../../verticals/consumer"
require_relative "../../verticals/demographic"
require_relative "../../verticals/academic"

module MagenticMarket
  module Verticals
    @registry = Registry.new

    @registry.register(Data::Finance::VERTICAL)
    @registry.register(Data::Healthcare::VERTICAL)
    @registry.register(Data::Energy::VERTICAL)
    @registry.register(Data::Industrial::VERTICAL)
    @registry.register(Data::Consumer::VERTICAL)
    @registry.register(Data::Demographic::VERTICAL)
    @registry.register(Data::Academic::VERTICAL)

    class << self
      def all
        @registry.all
      end

      def slugs
        @registry.slugs
      end

      def find(slug)
        @registry.find(slug)
      end

      def categories
        @registry.categories
      end

      def rayswarm_gems
        @registry.rayswarm_gems
      end
    end
  end
end
