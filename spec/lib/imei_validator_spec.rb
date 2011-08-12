require 'spec_helper'

describe "ImeiValidator" do
  context "when validating imei" do
    context "with valid imei" do
      it "return true" do
        ImeiValidator.valid?("351707015498228").should be_true
      end
    end

    context "with invalid imei" do
      it "return false" do
        ImeiValidator.valid?("Chuck Norris ate this IMEI").should be_false
      end
    end
  end
end