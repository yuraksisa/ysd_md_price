require 'spec_helper'

#
# Describing the behaviour of the PriceModelAspect class
#
describe Yito::BM::Prices::PriceModelAspect do

  class DummyClass
  	include DataMapper::Resource
  	include Yito::BM::Prices::PriceModelAspect
  	property :id, Serial
  end


  describe ".formatter" do

    context "default formatter" do
         	
      subject(:price) do
         the_price = DummyClass.new
         the_price.price_value = 150.00 
         the_price.price_currency = 'EUR'
         the_price
      end

      it { price.format_price.should == "150.00 EUR" }

    end

    context "configuration formatter" do

    end

  end

end 