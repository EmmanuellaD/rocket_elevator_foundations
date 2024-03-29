require_relative 'boot'

require 'rails/all'
require "sprockets/railtie" 

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RocketApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.assets.paths << Rails.root.join("app", "assets", "fonts", "font")

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.


    # config.autoload_paths += %W(#(config.root)/lib)
    # config.eager_load_paths << Rails.root.join('lib')
  end
end
