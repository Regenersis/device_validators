require 'spec_helper'

describe "SimSerialValidator" do
  context "when validating accessory tag" do
    context "with valid accessory tag" do
      it "return true" do
        SimSerialValidator.valid?("1234567891234567891").should be_true
      end
    end
    
    context "with invalid accessory tag" do
      it "return false" do
        SimSerialValidator.valid?("Chuck Norris doesnt need a mobile phone. He just shouts and everyone listens").should be_false
      end
    end
  end  
end