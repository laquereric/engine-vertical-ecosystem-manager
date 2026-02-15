# frozen_string_literal: true

module VerticalEcosystemManager
  class DashboardController < ApplicationController
    def index
      @verticals = VerticalEcosystemManager.all
      @total_verticals = @verticals.size
      @total_categories = @verticals.sum { |v| v.categories.size }
      @total_standards = @verticals.sum { |v| v.ontology_standards.size }
    end
  end
end
