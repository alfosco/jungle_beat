require_relative 'node'
require 'pry'

class LinkedList

  attr_reader :head

  def initialize
    @head = Node.new(data)
    @count = 0
  end

  # def head
  #   @head
  # end

  def append(data)
    @data = data
  end

  def to_string
    @head.data
    binding.pry
  end


end