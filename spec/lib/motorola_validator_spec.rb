require "spec_helper"

describe MotorolaValidator do
  context "when validating a sim serial number" do
    context "with a valid sim serial number" do
      it "should return true" do
        MotorolaValidator.valid?("S12345678901234").should be_true
      end
    end

    context "with an invalid sim serial number" do
      context "starting with an invalid prefix" do
        it "should return false" do
          MotorolaValidator.valid?("123456789012345").should be_false
        end
      end

      context "with an invalid length" do
        it "should return false" do
          MotorolaValidator.valid?("S123456789").should be_false
        end
      end

      context "with a nil sim serial number" do
        it "return false" do
          MotorolaValidator.valid?(nil).should be_false
        end
      end
    end
  end
end
