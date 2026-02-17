# frozen_string_literal: true

require_relative "vertical_ecosystem_manager/version"
require_relative "vertical_ecosystem_manager/engine" if defined?(Rails)
require_relative "vertical_ecosystem_manager/ontology_standard"
require_relative "vertical_ecosystem_manager/rayswarm_mapping"
require_relative "vertical_ecosystem_manager/category"
require_relative "vertical_ecosystem_manager/vertical"
require_relative "vertical_ecosystem_manager/registry"

require_relative "../../../../domain/vertical/engine/vertical-finance/finance"
require_relative "../../../../domain/vertical/engine/vertical-healthcare/healthcare"
require_relative "../../../../domain/vertical/engine/vertical-energy/energy"
require_relative "../../../../domain/vertical/engine/vertical-industry/industrial"
require_relative "../../../../domain/vertical/engine/vertical-consumer/consumer"
require_relative "../../../../domain/vertical/engine/vertical-academic/academic"

module VerticalEcosystemManager
end
