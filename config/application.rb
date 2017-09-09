require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DriverScan
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.precompile += %w( landing-page.scss )
    config.assets.precompile += %w( bootstrap.css )
    config.assets.precompile += %w( bootstrap.min.css )
    config.assets.precompile += %w( bootstrap.js )
    config.assets.precompile += %w( bootstrap.min.js )
    config.assets.precompile += %w( jquery.js )
    # config.assets.precompile += [/(^[^_\/]|\/[^_])[^\/]*$/]
  end
end
