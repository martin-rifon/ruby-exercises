# Module for exercise 2
module Excercise2
  # Returns a random float between 10.00 and 100.00
  #
  # @return [Float] the generated random float
  def self.random_float_between_10_and_100
    rand(10.00..100.00).round(2)
  end
end
