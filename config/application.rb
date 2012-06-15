require File.expand_path('../boot', __FILE__)

# require 'active_model/railtie'
require 'action_controller/railtie'

if defined?(Bundler)
  Bundler.require(:default, Rails.env)
end

module Irrigatomatic
  class Application < Rails::Application

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    config.session_store :cookie_store, key: '_irrigatomatic_session'
    config.secret_token = 'a8bdb8a766210234fff2a0a3df4c6176e1efdd8c99051e54bf69619365c07d10e357fbcf3465556f21685afa0a2af7609708fcb9b9701505bd6b54bd6525fedd'

  end
end
