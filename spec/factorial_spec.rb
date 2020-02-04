require 'factorial'

RSpec.describe Factorial do
  it "returns 1 for 0" do
    expect(subject.calculate(0)).to eq 1
  end
  it "calculates the factorial of 5" do
    expect(subject.calculate(5)).to eq 120
  end
  it "calculates the factorial of 6" do
    expect(subject.calculate(6)).to eq 720
  end
  it "calculates the factorial of -5" do
    expect(subject.calculate(-5)).to eq -120
  end
end
