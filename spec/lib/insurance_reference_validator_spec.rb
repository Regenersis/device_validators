require 'spec_helper'

describe "InsuranceReferenceValidator" do
  context "when validating insurance reference" do
    context "with valid insurance reference" do
      it "return true" do
        InsuranceReferenceValidator.valid?("I am 17 char long").should be_true
      end
    end

    context "with invalid insurance reference" do
      it "return false when reference is short" do
        InsuranceReferenceValidator.valid?("I am 16 chars   ").should be_false
      end

      it "return false when reference is long" do
        InsuranceReferenceValidator.valid?("I am 18 chars long").should be_false
      end
    end
  end
end
