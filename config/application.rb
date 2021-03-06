require_relative './boot'

require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module RecordOfGuidance
  class Application < Rails::Application
    config.action_mailer.default_url_options = { host: ENV['APPLICATION_HOST'] }
    config.active_job.queue_adapter = :sidekiq
    config.active_record.raise_in_transactional_callbacks = true
  end
end
