require_relative 'node'
require 'pry'

class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    end
    data
  end

  def count
    current = @head
    count = 1
    until current.next_node == nil
      current = current.next_node
      count += 1
    end
    count
  end

  def to_string
    current = @head
    data_array = Array.new
    data_array << current.data
      until current.next_node == nil
        current = current.next_node
        data_array << current.data
      end
    data_array.join(" ")
  end


end