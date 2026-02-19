# frozen_string_literal: true

module EngineVerticalEcosystemManager
  class DashboardController < ApplicationController
    def index
      @verticals = EngineVerticalEcosystemManager.all
      @total_verticals = @verticals.size
      @total_categories = @verticals.sum { |v| v.categories.size }
      @total_standards = @verticals.sum { |v| v.ontology_standards.size }
    end
  end
end
