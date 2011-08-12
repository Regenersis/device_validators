require 'spec_helper'

describe "FixedBroadbandSerialValidator" do
  context "when validating" do
    context "with valid broadband serial number using the CP prefix" do
      it "return true" do
        FixedBroadbandSerialValidator.valid?("CP239158716").should be_true
      end
    end

    context "with valid broadband serial number using the 10 prefix" do
      it "return true" do
        FixedBroadbandSerialValidator.valid?("10239158716").should be_true
      end
    end
    
    context "with invalid broadband serial number" do
      it "return false" do
        FixedBroadbandSerialValidator.valid?("Chuck Norris doesnt use the internet. He just asks god directly for the answer and god responds quicker than google").should be_false
      end
    end
  end  
end