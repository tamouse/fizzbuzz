require 'spec_helper'
require 'fizzbuzz'

describe FizzBuzz do
  it "has a version" do
    expect{FizzBuzz::VERSION}.not_to raise_error
  end
  it "3 is fizz" do
    expect(FizzBuzz.fizz(3)).to be_true
  end
  it "5 is buzz" do
    expect(FizzBuzz.buzz(5)).to be_true
  end
  it "15 is fizzbuzz" do
    expect(FizzBuzz.fizzbuzz(15)).to be_true
  end
  it "fizzbuzz first 20" do
    expect(FizzBuzz.play(20)).to eq([1,2,"fizz",4,"buzz","fizz",7,8,"fizz","buzz",11,"fizz",13,14,"fizzbuzz",16,17,"fizz",19,"buzz"])
  end

end
