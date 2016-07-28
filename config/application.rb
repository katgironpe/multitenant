require_relative 'boot'

require 'rails/all'
require 'apartment/elevators/subdomain'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Multitenant
  class Application < Rails::Application
    config.middleware.use Apartment::Elevators::Subdomain

    config.generators do |g|
      g.test_framework  :rspec
      g.stylesheets     false
      g.javascripts     false
      g.factory_girl dir: 'spec/factories'
    end
  end
end
