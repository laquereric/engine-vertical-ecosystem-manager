# frozen_string_literal: true

module VerticalEcosystemManager
  class VerticalsController < ApplicationController
    def index
      @verticals = VerticalEcosystemManager.all
    end

    def show
      @vertical = VerticalEcosystemManager.find(params[:slug])
      head :not_found unless @vertical
    end
  end
end
