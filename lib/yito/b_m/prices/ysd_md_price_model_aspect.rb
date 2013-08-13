require 'ysd_md_configuration' unless defined?SystemConfiguration::Variable
require 'ysd-plugins' unless defined?Plugins::ModelAspect
require 'dm-core' unless defined?DataMapper

module Yito
  module BM
    module Prices
      #
      # Aspect to hold a price and a currency
      #
      module PriceModelAspect 
            include ::Plugins::ModelAspect

        def self.included(model)

          if model.respond_to?(:property)
            model.property :price_value, DataMapper::Property::Decimal,
                           :field => 'price_value', :precision => 10,
                           :scale => 2 
            model.property :price_currency, String, :field => 'price_currency', 
                           :length => 3
          end

        end 
        
        #
        # Get the price and currency formatted
        #
        def format_price
          
          formatter = SystemConfiguration::Variable.get_value("price.price_format",
            "%.2f %s")

          formatter % [price_value, price_currency]

        end

      end
    end
  end
end