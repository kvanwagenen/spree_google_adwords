require 'spree_core'

module Spree
  module GoogleAdwords
    def self.config(&block)
      yield(Spree::GoogleAdwords::Config)
    end
  end
end

require 'spree_google_adwords/engine'
