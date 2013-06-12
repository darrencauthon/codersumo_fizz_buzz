require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require_relative 'fizz_buzz'

describe FizzBuzz do
  it "should exist" do
    FizzBuzz.nil?.must_equal false
  end

  it "should return 1 for 1" do
    FizzBuzz.call(1).must_equal "1"
  end

  it "should return 2 for 2" do
    FizzBuzz.call(2).must_equal '2'
  end
end

