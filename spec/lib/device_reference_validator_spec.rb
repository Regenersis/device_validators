require 'spec_helper'

describe "DeviceReferenceValidator" do
  context "when validating" do
    
    context "with valid accessory tag" do
      it "return true" do
        DeviceReferenceValidator.valid?("O2SC145815").should be_true
      end
    end
    
    context "with invalid accessory tag" do
      it "return false" do
        DeviceReferenceValidator.valid?("If Chuck Norris was an accessory tag he would be to long for any human to read").should be_false
      end
    end
    
    context "with valid broadband serial number" do
      it "return true" do
        DeviceReferenceValidator.valid?("CP239158716").should be_true
      end
    end
    
    context "with invalid broadband serial number" do
      it "return false" do
        DeviceReferenceValidator.valid?("Chuck Norris doesnt use the internet. He just asks god directly for the answer and god responds quicker than google").should be_false
      end
    end
    
    context "with valid imei" do
      it "return true" do
        DeviceReferenceValidator.valid?("351707015498228").should be_true
      end
    end
    
    context "with invalid imei" do
      it "return false" do
        DeviceReferenceValidator.valid?("Chuck Norris ate this IMEI").should be_false
      end
    end
    
    context "with valid sim serial" do
      it "return true" do
        DeviceReferenceValidator.valid?("1234567891234567891").should be_true
      end
    end
    
    context "with invalid sim serial" do
      it "return false" do
        DeviceReferenceValidator.valid?("Chuck Norris doesnt need a mobile phone. He just shouts and everyone listens").should be_false
      end
    end

    context "with valid ICC serial number" do
      it "return true" do
        DeviceReferenceValidator.valid?("8944113004000000015").should be_true
      end
    end

    context "with invalid ICC serial number" do
      it "return false" do
        DeviceReferenceValidator.valid?("Chuck Norris doesnt need an International Calling Card. He just shouts and everyone listens").should be_false
      end
    end
    
    context "with valid insurance reference" do
      it "return true" do
        DeviceReferenceValidator.valid?("I am 17 char long").should be_true
      end
    end

    context "with invalid insurance reference" do
      it "return false" do
        DeviceReferenceValidator.valid?("Nonsense").should be_false
      end
    end

  end
end