require 'rails_helper'

describe Calculator do
  context "when input is empty" do
    let (:input) { "" }
    it "empty string should return 0" do
      result = Calculator.new.add(input)
      expect(result).to eq(0)
    end
  end
  context "when input is having only 1 digit" do
    let (:number) { 1 }
    let (:input) { "#{number}" }

    it "returns the same number if only 1 digit is entered" do
      result = Calculator.new.add(input)
      expect(result).to eq(number)
    end
  end
end
