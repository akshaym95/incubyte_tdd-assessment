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

  context "input contains multiple numbers with comma seperator" do
    let (:number1) { 5 }
    let (:number2) { 1 }
    let (:input) { "#{number1}, #{number2}" }

    it "returns sum of numbers when there are more than 1 digit" do
      result = Calculator.new.add(input)
      expect(result).to eq(6)
    end
  end
end
