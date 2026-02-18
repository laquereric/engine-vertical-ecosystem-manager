# frozen_string_literal: true

module VerticalEcosystemManager
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
