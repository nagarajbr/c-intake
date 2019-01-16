Intake::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  # config.cache_classes = false
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false



  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  # config.assets.debug = true
    config.assets.debug = false

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Don't care if the mailer can't send. This is made to false from true, to make it work in development server.
  config.action_mailer.raise_delivery_errors = true
  #From email settings to send emails from application for reset / new email password email
  config.action_mailer.delivery_method = :smtp
  #gmail settings are used later to be updated by arkansas.gov domain, need internet connection for it to work.
  config.action_mailer.smtp_settings = {
     address:              'smtp.gmail.com',
    port:                 587,
    domain:               'http://rhelproxy.state.ar.us:8888',
    user_name:            'jdoe21996@gmail.com',
    password:             'johndoe12345',
    authentication:       'plain',
    enable_starttls_auto: true  }

  # Manoj - 10/01/2014
  # For Sequence Migrations.
  config.active_record.schema_format = :sql
end