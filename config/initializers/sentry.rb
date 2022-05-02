# frozen_string_literal: true

Sentry.init do |config|
  config.dsn = ENV['SENTRY_DSN']
  config.enabled_environments = %w[production]
  config.environment = Rails.env
  config.send_default_pii = true
  config.breadcrumbs_logger = [:active_support_logger]
end
