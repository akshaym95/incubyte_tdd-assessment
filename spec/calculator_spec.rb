require 'rails_helper'

describe Calculator do
  let (:input) { "" }
  it "empty string should return 0" do
    result = Calculator.new.add(input)
    expect(result).to eq(0)
  end
end
