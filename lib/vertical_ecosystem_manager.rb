# frozen_string_literal: true

require_relative "vertical_ecosystem_manager/version"
require_relative "vertical_ecosystem_manager/engine" if defined?(Rails)
require_relative "vertical_ecosystem_manager/ontology_standard"
require_relative "vertical_ecosystem_manager/rayswarm_mapping"
require_relative "vertical_ecosystem_manager/category"
require_relative "vertical_ecosystem_manager/vertical"
require_relative "vertical_ecosystem_manager/registry"

require_relative "../../../containers/vertical-finance/finance"
require_relative "../../../containers/vertical_healthcare/healthcare"
require_relative "../../../containers/vertical_energy/energy"
require_relative "../../../containers/verical_industry/industrial"
require_relative "../../../containers/vertical-consumer/consumer"
require_relative "../../../containers/vertical-academic/academic"

module VerticalEcosystemManager
  LAYER = "2.5"

  @registry = Registry.new

  @registry.register(Data::Finance::VERTICAL)
  @registry.register(Data::Healthcare::VERTICAL)
  @registry.register(Data::Energy::VERTICAL)
  @registry.register(Data::Industrial::VERTICAL)
  @registry.register(Data::Consumer::VERTICAL)
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
