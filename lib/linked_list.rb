require_relative 'node'
require 'pry'

class LinkedList

  attr_accessor :head,
                :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @count += 1
    if @head == nil
      @head = Node.new(data)
    elsif head.next_node == nil
      head.next_node = Node.new(data)
    else
      until head.next_node == nil
        head.next_node = Node.new(data)
      end
    end
    data
  end

  def to_string
    data_array = Array.new
    data_array << head.data
      until head.next_node == nil
        @head = head.next_node
        data_array << head.data
      end
    data_array.join(" ")
  end

  def prepend(data)
    @count += 1
    temp_list = @head
    @head = Node.new(data)
    head.next_node = temp_list
  end

  def insert(position, data)
    @count += 1
    index_count = 1
    current_node = @head
    new_node = Node.new(data)
    until index_count == position
      index_count += 1
      current_node = current_node.next_node
    end
    temp_list = current_node.next_node
    current_node.next_node = new_node
    current_node.next_node.next_node = temp_list
  end


end