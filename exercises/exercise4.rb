# Module for exercise 4 code.
module Excercise4
  # Custom implementation of the Ruby take method.
  #
  # @param [Array<Object>] collection Array from where to retrieve items
  # @param [Integer] count Number of items to retrieve
  # @return [Array<Object>] Array of retrieved items
  def self.take(collection, count)
    raise ArgumentError if count < 0
    collection.first(count)
  end
end
