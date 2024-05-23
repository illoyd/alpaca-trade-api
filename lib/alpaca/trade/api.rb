# frozen_string_literal: true

require 'alpaca/trade/api/version'
require 'alpaca/trade/api/configuration'

require 'alpaca/trade/api/account'
require 'alpaca/trade/api/asset'
require 'alpaca/trade/api/bar'
require 'alpaca/trade/api/calendar'
require 'alpaca/trade/api/clock'
require 'alpaca/trade/api/last_trade'
require 'alpaca/trade/api/non_trade_activity'
require 'alpaca/trade/api/order'
require 'alpaca/trade/api/option_contract'
require 'alpaca/trade/api/position'
require 'alpaca/trade/api/trade_activity'
require 'alpaca/trade/api/quote'

require 'alpaca/trade/api/client'
require 'alpaca/trade/api/errors'

require 'alpaca/market/client'
require 'alpaca/market/crypto/bar'

require 'bigdecimal/util'
require 'json'
require 'time'

module Alpaca
  module Trade
    module Api
      class << self
        def configuration
          @configuration ||= Alpaca::Trade::Api::Configuration.new
        end

        def configure
          yield(configuration)
        end

        def reset
          @configuration = Alpaca::Trade::Api::Configuration.new
        end
      end
    end
  end
end
