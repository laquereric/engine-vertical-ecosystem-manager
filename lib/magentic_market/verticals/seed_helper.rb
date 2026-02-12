# frozen_string_literal: true

module MagenticMarket
  module Verticals
    module SeedHelper
      # Seeds categories into a Rails model.
      #
      # Expects the model to respond to `find_or_create_by!` and have columns:
      #   slug, name, description, vertical (string)
      #
      # Usage:
      #   require "magentic_market/verticals/seed_helper"
      #   MagenticMarket::Verticals::SeedHelper.seed_categories!(Category)
      #
      def self.seed_categories!(model)
        MagenticMarket::Verticals.categories.each do |cat|
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
      #   require "magentic_market/verticals/seed_helper"
      #   MagenticMarket::Verticals::SeedHelper.seed_committees!(Committee)
      #
      def self.seed_committees!(model)
        MagenticMarket::Verticals.all.each do |vert|
          model.find_or_create_by!(slug: vert.slug) do |record|
            record.name = vert.name
            record.description = vert.description
          end
        end
      end
    end
  end
end
