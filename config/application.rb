require_relative 'boot'

require 'rails/all'
require "active_storage/engine"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Library
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    #ActionMailer::Base.smtp_settings = {

    	#:address          => 'smtp.gmail.com',
    	#:domain           => 'mail.google.com',
    	#:port             => 547,
    	#:user_name        => 'mymailerapp@gmail.com',
    	#:password         => 'weakpass',
    	#:authentication   => 'login',
    	#:enable_startils_auto  => true
    #}
  end
end
