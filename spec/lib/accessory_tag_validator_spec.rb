require 'spec_helper'

describe "AccessoryTagValidator" do
  context "with valid accessory tag" do
    it "return true" do
      AccessoryTagValidator.valid?("O2SC145815").should be_true
    end
  end

  context "with invalid accessory tag" do
    it "return false" do
      AccessoryTagValidator.valid?("Chuck Norris does not do accessories, he is the complete man already").should be_false
    end
  end
end
