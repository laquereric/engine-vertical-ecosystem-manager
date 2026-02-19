# frozen_string_literal: true

module EngineVerticalEcosystemManager
  class HeartBeat < ApplicationRecord
    include Heartbeat::HeartBeatConcern

    self.table_name = "vertical_ecosystem_manager_heartbeats"
  end
end
