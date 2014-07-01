# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: '_cartog_session'
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( bootstrap-responsive.css )