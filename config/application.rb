# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rails7Sample
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.autoload = :classic

    config.time_zone = 'Asia/Tokyo'
    config.active_record.default_timezone = :local
    config.i18n.default_locale = :ja
    config.paths.add 'lib', eager_load: true
    config.generators.system_tests = nil
    # config.active_job.queue_adapter = :delayed_job

    config.generators do |g|
      g.assets false
      g.helper false
      g.template_engine :slim
      g.test_framework :rspec,
                       fixtures: false,
                       view_specs: false,
                       controller_specs: false,
                       routing_specs: false,
                       request_specs: true
      g.orm :active_record, primary_key_type: :uuid # UUIDを利用する
    end

    config.hosts << ENV.fetch('APP_DOMAIN', nil)
    config.hosts << 'lvh.me'
  end
end
