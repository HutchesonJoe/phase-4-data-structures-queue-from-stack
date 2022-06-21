require_relative './stack'
require "pry"

class MyQueue
  attr_accessor :s1, :s2
  
  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def add(value)
    # @s1.push(value)
    # @s2.push(@s1.pop)
    binding.pry
  end

  def remove
    return @s2.pop
  end

  
end