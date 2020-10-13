# frozen_string_literal: true

require 'rails/all'

module TrayClient
  class Engine < ::Rails::Engine
    isolate_namespace TrayClient

    config.generators do |g|
      g.test_framework :rspec
      g.assets false
      g.helper false
    end
  end
end
