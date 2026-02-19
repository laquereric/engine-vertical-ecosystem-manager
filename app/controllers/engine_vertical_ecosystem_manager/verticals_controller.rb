# frozen_string_literal: true

module EngineVerticalEcosystemManager
  class VerticalsController < ApplicationController
    def index
      @verticals = EngineVerticalEcosystemManager.all
    end

    def show
      @vertical = EngineVerticalEcosystemManager.find(params[:slug])
      head :not_found unless @vertical
    end
  end
end
