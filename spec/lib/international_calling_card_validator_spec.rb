require 'spec_helper'

describe "InternationalCallingCardValidator" do
  context "when validating calling card validator" do
    context "with valid calling card serial number" do
      it "return true" do
        InternationalCallingCardValidator.valid?("8944113004000000015").should be_true
      end
    end

    context "with invalid calling card serial number" do
      it "return false" do
        InternationalCallingCardValidator.valid?("8944113004000000012").should be_false
      end
    end
  end
end