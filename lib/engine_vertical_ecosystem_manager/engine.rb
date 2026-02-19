# frozen_string_literal: true

module EngineVerticalEcosystemManager
  class Engine < ::Rails::Engine
    isolate_namespace EngineVerticalEcosystemManager
      include LibraryPlatform::AppendMigrations

  end
end
