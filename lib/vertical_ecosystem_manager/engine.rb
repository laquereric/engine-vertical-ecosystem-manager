# frozen_string_literal: true

module VerticalEcosystemManager
  class Engine < ::Rails::Engine
    isolate_namespace VerticalEcosystemManager
      include Platform::AppendMigrations
      end
    end

  end
end
