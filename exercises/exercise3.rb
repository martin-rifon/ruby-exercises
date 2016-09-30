# Module for exercise 3
module Excercise3
  # Custom implementation the Ruby include? method
  #
  # @param [Array<Object>] collection Array to search
  # @param [Object] item Object to check against
  # @return [Boolean] Whether the object was found or not
  def self.include?(collection, item)
    collection.index(item)
  end
end
