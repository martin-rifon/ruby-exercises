# Module for exercise 1 code.
module Excercise1
  # Returns the object with the greatest length.
  #
  # @param [Array<Object>] objects Objects to check.
  # @return [Object] Object with the greatest length.
  def self.greatest_length(*objects)
    objects.max do |a, b|
      if a.respond_to?(:length) && b.respond_to?(:length)
        a.length <=> b.length
      elsif a.respond_to?(:length)
        1
      elsif b.respond_to?(:length)
        -1
      else
        0
      end
    end
  end
end
