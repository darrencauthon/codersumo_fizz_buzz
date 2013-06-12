require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require_relative 'fizz_buzz'

describe FizzBuzz do
  it "should exist" do
    FizzBuzz.nil?.must_equal false
  end

  [
    [1, '1'],
    [2, '2'],
    [3, 'Fizz'],
    [5, 'Buzz'],
    [6, 'Fizz'],
    [10, 'Buzz'],
    [12, 'Fizz'],
    [15, 'FizzBuzz'],
    [20, 'Buzz'],
    [30, 'FizzBuzz'],
  ].each do |test|
    it "should return #{test[0]} for #{test[1]}" do
      FizzBuzz.call(test[0]).must_equal test[1]
    end
  end
end

