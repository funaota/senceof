require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Senceof
  class Application < Rails::Application
    config.generators.template_engine = :slim
    config.generators.test_framework  = :rspec
    config.generators.stylesheets = false
    config.generators.javascripts = false
    config.generators.helper      = false
  end
end
