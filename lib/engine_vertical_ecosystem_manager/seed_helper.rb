# frozen_string_literal: true

module EngineVerticalEcosystemManager
  module SeedHelper
    # Seeds categories into a Rails model.
    #
    # Expects the model to respond to `find_or_create_by!` and have columns:
    #   slug, name, description, vertical (string)
    #
    # Usage:
    #   require "engine_vertical_ecosystem_manager/seed_helper"
    #   EngineVerticalEcosystemManager::SeedHelper.seed_categories!(Category)
    #
    def self.seed_categories!(model)
      EngineVerticalEcosystemManager.categories.each do |cat|
        model.find_or_create_by!(slug: cat.slug) do |record|
          record.name = cat.name
          record.description = cat.description
          record.vertical = cat.vertical_slug if record.respond_to?(:vertical=)
        end
      end
    end

    # Seeds spoke committees for each vertical into a Rails model.
    #
    # Expects the model to respond to `find_or_create_by!` and have columns:
    #   slug, name, description
    #
    # Usage:
    #   require "engine_vertical_ecosystem_manager/seed_helper"
    #   EngineVerticalEcosystemManager::SeedHelper.seed_committees!(Committee)
    #
    def self.seed_committees!(model)
      EngineVerticalEcosystemManager.all.each do |vert|
        model.find_or_create_by!(slug: vert.slug) do |record|
          record.name = vert.name
          record.description = vert.description
        end
      end
    end
  end
end
