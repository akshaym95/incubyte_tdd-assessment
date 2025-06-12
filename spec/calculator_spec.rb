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

  context "input contains multiple numbers with new line seperator" do
    let (:number1) { 5 }
    let (:number2) { 1 }
    let (:input) { "#{number1} \n #{number2}" }

    it "returns sum of numbers when there are more than 1 digit" do
      result = Calculator.new.add(input)
      expect(result).to eq(6)
    end
  end
  context "input contains multiple numbers with new line  and , seperator" do
    let (:number1) { 5 }
    let (:number2) { 1 }
    let (:number3) { 2 }
    let (:input) { "#{number1} \n #{number2} , #{number3}" }

    it "returns sum of numbers when there are more than 1 digit" do
      result = Calculator.new.add(input)
      expect(result).to eq(8)
    end
  end

  context "Support different delimiters" do
    let (:number1) { 5 }
    let (:number2) { 1 }
    let (:input) { "//;\n#{number1}; #{number2}" }

    it "returns sum of numbers when there are more than 1 number" do
      result = Calculator.new.add(input)
      expect(result).to eq(6)
    end
  end

  context "numbers with negative numbers" do
    let (:number1) { -5 }
    let (:number2) { 1 }
    let (:input) { "//;\n#{number1}; #{number2}" }

    it "returns sum of numbers when there are more than 1 number" do
      expect { Calculator.new.add(input) }.to raise_error StandardError, "negative numbers not allowed -5"
    end
  end

  context "numbers with  multiple negative numbers" do
    let (:number1) { -5 }
    let (:number2) { -1 }
    let (:input) { "#{number1}, #{number2}" }

    it "returns sum of numbers when there are more than 1 number" do
      expect { Calculator.new.add(input) }.to raise_error StandardError, "negative numbers not allowed -5, -1"
    end
  end
end
