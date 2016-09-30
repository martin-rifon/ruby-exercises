# Module for exercise 5 code
module Excercise5
  # Swaps the case of all the chars in a string
  #
  # @param [String] string String to case swap
  # @return [String] Swap cased parameter string
  def self.swapcase(string)
    string.chars.map { |c| c == c.upcase ? c.downcase : c.upcase }.join
  end
end
