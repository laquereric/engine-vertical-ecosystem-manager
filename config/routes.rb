# frozen_string_literal: true

VerticalEcosystemManager::Engine.routes.draw do
  root "verticals#index"
  resources :verticals, only: [:index, :show], param: :slug
end
