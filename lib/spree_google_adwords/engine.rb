module SpreeGoogleAdwords
  class Engine < Rails::Engine
    # require 'spree/core'
    # isolate_namespace Spree
    engine_name 'spree_google_adwords'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "spree.google_adwords.environment", :before => :load_config_initializers do |app|
      Spree::GoogleAdwords::Config = Spree::GoogleAdwordsConfiguration.new
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
