# frozen_string_literal: true

VerticalEcosystemManager::Engine.routes.draw do
  root "dashboard#index"
  resources :verticals, only: [:index, :show], param: :slug
end
