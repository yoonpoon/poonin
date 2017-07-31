ContentfulRails.configure do |config|
  config.authenticate_webhooks = true # false here would allow the webhooks to process without basic auth
  config.webhooks_username =    ENV["CONTENTFUL_WEBHOOK_USERNAME"]
  config.webhooks_password =    ENV["CONTENTFUL_WEBHOOK_PASSWORD"]
  config.access_token =         ENV["CONTENTFUL_ACCESS_TOKEN"]
  config.preview_access_token = ENV["CONTENTFUL_PREVIEW_TOKEN"]
  config.management_token =     ENV["CONTENTFUL_MANAGEMENT_TOKEN"]
  config.space =                ENV["CONTENTFUL_SPACE"]
  config.default_locale = 'en-US'
  config.contentful_options = {
    entry_mapping: {

    }
  }
end
