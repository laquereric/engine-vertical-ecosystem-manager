# frozen_string_literal: true

module EngineVerticalEcosystemManager
  class HeartBeatExecution < ApplicationRecord
    include LibraryHeartbeat::HeartBeatExecutionConcern

    self.table_name = "vertical_ecosystem_manager_heartbeat_executions"
  end
end
