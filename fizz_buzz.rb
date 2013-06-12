class FizzBuzz
  def self.call input
    {
      'FizzBuzz' => ->(i) { i % 3 == 0 && i % 5 == 0 },
      'Fizz'     => ->(i) { i % 3 == 0 },
      'Buzz'     => ->(i) { i % 5 == 0 },
      input.to_s => ->(i) { true }
    }.select { |k, v| v.call input }.first[0]
  end
end
