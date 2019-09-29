require Rails.root.join('config/environments/production')

# NOTE: The settings in this folder are overrides to the production.rb settings
# the staging environment should resemble production as closely as possible

Rails.application.configure do
  # Restrict access with HTTP Basic Auth for staging environments
  unless ENV['STAGING_AUTH'].blank?
      config.middleware.use '::Rack::Auth::Basic' do |username, password|
          ENV['STAGING_AUTH'].split(';').any? do |pair|
              [username, password] == pair.split(':')
          end
      end
  end
end
