class Spree::GoogleAdwordsConfiguration < Spree::Preferences::Configuration
  preference :oauth2_client_id, :string, :default => ''
  preference :oauth2_client_secret, :string, :default => ''
  preference :developer_token, :string, :default => ''
  preference :user_agent, :string, :default => ''
  preference :environment, :string, :default => ''
end
