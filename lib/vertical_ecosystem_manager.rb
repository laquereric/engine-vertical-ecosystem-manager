# frozen_string_literal: true

require_relative "vertical_ecosystem_manager/version"
require_relative "vertical_ecosystem_manager/ontology_standard"
require_relative "vertical_ecosystem_manager/rayswarm_mapping"
require_relative "vertical_ecosystem_manager/category"
require_relative "vertical_ecosystem_manager/vertical"
require_relative "vertical_ecosystem_manager/registry"

require_relative "../../../containers/finance"
require_relative "../../../containers/healthcare"
require_relative "../../../containers/energy"
require_relative "../../../containers/industrial"
require_relative "../../../containers/consumer"
require_relative "../../../containers/demographic"
require_relative "../../../containers/academic"

module VerticalEcosystemManager
  LAYER = "2.5"

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
